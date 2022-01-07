
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef scalar_t__ u32 ;
struct sym_hcb {int rv_ctest3; } ;
struct sym_ccb {int host_status; } ;


 int CLF ;
 int CSF ;
 scalar_t__ INL (struct sym_hcb*,int ) ;
 int OUTB (struct sym_hcb*,int ,int) ;
 int OUTL (struct sym_hcb*,int ,int) ;
 int OUTL_DSP (struct sym_hcb*,scalar_t__) ;
 scalar_t__ SCRIPTA_BA (struct sym_hcb*,int ) ;
 scalar_t__ SCRIPTB_BA (struct sym_hcb*,int ) ;
 int TE ;
 int complete_error ;
 int done ;
 int done_end ;
 int getjob_begin ;
 int getjob_end ;
 int nc_ctest3 ;
 int nc_dsa ;
 int nc_dsp ;
 int nc_stest3 ;
 int reselect ;
 int sel_for_abort ;
 int sel_for_abort_1 ;
 int start ;
 struct sym_ccb* sym_ccb_from_dsa (struct sym_hcb*,scalar_t__) ;
 int sym_start_reset (struct sym_hcb*) ;
 int ungetjob ;

__attribute__((used)) static void sym_recover_scsi_int (struct sym_hcb *np, u_char hsts)
{
 u32 dsp = INL(np, nc_dsp);
 u32 dsa = INL(np, nc_dsa);
 struct sym_ccb *cp = sym_ccb_from_dsa(np, dsa);






 if ((!(dsp > SCRIPTA_BA(np, getjob_begin) &&
        dsp < SCRIPTA_BA(np, getjob_end) + 1)) &&
     (!(dsp > SCRIPTA_BA(np, ungetjob) &&
        dsp < SCRIPTA_BA(np, reselect) + 1)) &&
     (!(dsp > SCRIPTB_BA(np, sel_for_abort) &&
        dsp < SCRIPTB_BA(np, sel_for_abort_1) + 1)) &&
     (!(dsp > SCRIPTA_BA(np, done) &&
        dsp < SCRIPTA_BA(np, done_end) + 1))) {
  OUTB(np, nc_ctest3, np->rv_ctest3 | CLF);
  OUTB(np, nc_stest3, TE|CSF);






  if (cp) {
   cp->host_status = hsts;
   OUTL_DSP(np, SCRIPTA_BA(np, complete_error));
  }



  else {
   OUTL(np, nc_dsa, 0xffffff);
   OUTL_DSP(np, SCRIPTA_BA(np, start));
  }
 }
 else
  goto reset_all;

 return;

reset_all:
 sym_start_reset(np);
}
