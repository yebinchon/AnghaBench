
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;
typedef int u32 ;
struct sym_hcb {int * msgout; } ;
struct sym_ccb {int xerr_status; } ;


 int HF_EXT_ERR ;
 int HF_PRT ;
 int HS_PRT ;
 int HS_UNEXPECTED ;
 int INB (struct sym_hcb*,int ) ;
 int INL (struct sym_hcb*,int ) ;
 int ISCON ;
 int MA ;
 int M_ID_ERROR ;
 int M_PARITY ;
 int OUTL_DSP (struct sym_hcb*,int) ;
 int OUTONB (struct sym_hcb*,int ,int ) ;
 int SCRIPTA_BA (struct sym_hcb*,int ) ;
 int SCRIPTB_BA (struct sym_hcb*,int ) ;
 int XE_PARITY_ERR ;
 int clrack ;
 int dispatch ;
 int nc_dbc ;
 int nc_dsa ;
 int nc_dsp ;
 int nc_sbcl ;
 int nc_scntl1 ;
 int pm_handle ;
 int printf (char*,char*,int,int,int) ;
 scalar_t__ printk_ratelimit () ;
 struct sym_ccb* sym_ccb_from_dsa (struct sym_hcb*,int) ;
 int sym_int_ma (struct sym_hcb*) ;
 char* sym_name (struct sym_hcb*) ;
 int sym_recover_scsi_int (struct sym_hcb*,int ) ;
 int sym_set_script_dp (struct sym_hcb*,struct sym_ccb*,int) ;
 int sym_start_reset (struct sym_hcb*) ;

__attribute__((used)) static void sym_int_par (struct sym_hcb *np, u_short sist)
{
 u_char hsts = INB(np, HS_PRT);
 u32 dsp = INL(np, nc_dsp);
 u32 dbc = INL(np, nc_dbc);
 u32 dsa = INL(np, nc_dsa);
 u_char sbcl = INB(np, nc_sbcl);
 u_char cmd = dbc >> 24;
 int phase = cmd & 7;
 struct sym_ccb *cp = sym_ccb_from_dsa(np, dsa);

 if (printk_ratelimit())
  printf("%s: SCSI parity error detected: SCR1=%d DBC=%x SBCL=%x\n",
   sym_name(np), hsts, dbc, sbcl);




 if (!(INB(np, nc_scntl1) & ISCON)) {
  sym_recover_scsi_int(np, HS_UNEXPECTED);
  return;
 }





 if (!cp)
  goto reset_all;





 if ((cmd & 0xc0) || !(phase & 1) || !(sbcl & 0x8))
  goto reset_all;




 OUTONB(np, HF_PRT, HF_EXT_ERR);
 cp->xerr_status |= XE_PARITY_ERR;




 np->msgout[0] = (phase == 7) ? M_PARITY : M_ID_ERROR;
 if (phase == 1 || phase == 5) {

  if (dsp == SCRIPTB_BA(np, pm_handle))
   OUTL_DSP(np, dsp);

  else if (sist & MA)
   sym_int_ma (np);

  else {
   sym_set_script_dp (np, cp, dsp);
   OUTL_DSP(np, SCRIPTA_BA(np, dispatch));
  }
 }
 else if (phase == 7)

  goto reset_all;



 else
  OUTL_DSP(np, SCRIPTA_BA(np, dispatch));
 return;

reset_all:
 sym_start_reset(np);
 return;
}
