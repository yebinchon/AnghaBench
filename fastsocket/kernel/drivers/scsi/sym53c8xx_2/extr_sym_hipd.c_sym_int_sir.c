
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_char ;
typedef int u32 ;
struct sym_tcb {int dummy; } ;
struct sym_hcb {int* msgout; int lastmsg; int* msgin; struct sym_tcb* target; } ;
struct sym_ccb {int host_flags; int cmd; int xerr_status; int extra_bytes; } ;


 int DEBUG_FLAGS ;
 int DEBUG_POINTER ;
 int DEBUG_TINY ;
 int HF_EXT_ERR ;
 int HF_PRT ;
 int HF_SENSE ;
 int HS_BUSY ;
 int HS_NEGOTIATE ;
 int HS_PRT ;
 int INB (struct sym_hcb*,int ) ;
 int INL (struct sym_hcb*,int ) ;
 int KERN_WARNING ;
 int M_ABORT ;
 int M_ABORT_TAG ;

 int M_ID_ERROR ;

 void* M_NOOP ;
 int M_PARITY ;

 int M_RESET ;




 int OUTB (struct sym_hcb*,int ,int ) ;
 int OUTL_DSP (struct sym_hcb*,int ) ;
 int OUTOFFB (struct sym_hcb*,int ,int ) ;
 int OUTONB (struct sym_hcb*,int ,int ) ;
 int OUTONB_STD () ;
 int SCRIPTA_BA (struct sym_hcb*,int ) ;
 int SCRIPTB_BA (struct sym_hcb*,int ) ;
 int XE_BAD_PHASE ;
 int XE_EXTRA_DATA ;
 int XE_PARITY_ERR ;
 int XE_SODL_UNRUN ;
 int XE_SWIDE_OVRUN ;
 int clrack ;
 int msg_bad ;
 int msg_weird ;
 int nc_dsa ;
 int nc_dsps ;
 int nc_scratcha ;
 int nc_sdid ;
 int printf (char*,size_t) ;
 int scmd_printk (int ,int ,char*,...) ;
 int scr_to_cpu (int) ;
 struct sym_ccb* sym_ccb_from_dsa (struct sym_hcb*,int ) ;
 int sym_complete_error (struct sym_hcb*,struct sym_ccb*) ;
 int sym_modify_dp (struct sym_hcb*,struct sym_tcb*,struct sym_ccb*,int) ;
 int sym_nego_default (struct sym_hcb*,struct sym_tcb*,struct sym_ccb*) ;
 int sym_nego_rejected (struct sym_hcb*,struct sym_tcb*,struct sym_ccb*) ;
 int sym_ppr_nego (struct sym_hcb*,struct sym_tcb*,struct sym_ccb*) ;
 int sym_print_addr (int ,char*,int ,int) ;
 int sym_print_msg (struct sym_ccb*,char*,int*) ;
 int sym_sir_bad_scsi_status (struct sym_hcb*,size_t,struct sym_ccb*) ;
 int sym_sir_task_recovery (struct sym_hcb*,size_t) ;
 int sym_sync_nego (struct sym_hcb*,struct sym_tcb*,struct sym_ccb*) ;
 int sym_update_dmap_regs (struct sym_hcb*) ;
 int sym_wide_nego (struct sym_hcb*,struct sym_tcb*,struct sym_ccb*) ;

__attribute__((used)) static void sym_int_sir(struct sym_hcb *np)
{
 u_char num = INB(np, nc_dsps);
 u32 dsa = INL(np, nc_dsa);
 struct sym_ccb *cp = sym_ccb_from_dsa(np, dsa);
 u_char target = INB(np, nc_sdid) & 0x0f;
 struct sym_tcb *tp = &np->target[target];
 int tmp;

 if (DEBUG_FLAGS & DEBUG_TINY) printf ("I#%d", num);

 switch (num) {
 case 147:
  sym_complete_error(np, cp);
  return;




 case 132:
 case 128:
 case 150:
  sym_sir_task_recovery(np, num);
  return;




 case 131:
  scmd_printk(KERN_WARNING, cp->cmd,
    "No MSG OUT phase after selection with ATN\n");
  goto out_stuck;




 case 133:
  scmd_printk(KERN_WARNING, cp->cmd,
    "No MSG IN phase after reselection\n");
  goto out_stuck;




 case 134:
  scmd_printk(KERN_WARNING, cp->cmd,
    "No IDENTIFY after reselection\n");
  goto out_stuck;



 case 135:
  np->msgout[0] = M_RESET;
  goto out;




 case 137:
  np->msgout[0] = M_ABORT;
  goto out;



 case 136:
  np->msgout[0] = M_ABORT_TAG;
  goto out;




 case 138:
  np->lastmsg = np->msgout[0];
  np->msgout[0] = M_NOOP;
  scmd_printk(KERN_WARNING, cp->cmd,
   "message %x sent on bad reselection\n", np->lastmsg);
  goto out;




 case 144:
  np->lastmsg = np->msgout[0];
  np->msgout[0] = M_NOOP;

  if (np->lastmsg == M_PARITY || np->lastmsg == M_ID_ERROR) {
   if (cp) {
    cp->xerr_status &= ~XE_PARITY_ERR;
    if (!cp->xerr_status)
     OUTOFFB(np, HF_PRT, HF_EXT_ERR);
   }
  }
  goto out;





 case 148:
  if (!cp)
   goto out;
  sym_sir_bad_scsi_status(np, num, cp);
  return;




 case 139:
  sym_print_msg(cp, "M_REJECT to send for ", np->msgin);
  np->msgout[0] = 155;
  goto out;






 case 129:
  if (cp) {
   OUTONB(np, HF_PRT, HF_EXT_ERR);
   cp->xerr_status |= XE_SWIDE_OVRUN;
  }
  goto out;





 case 130:
  if (cp) {
   OUTONB(np, HF_PRT, HF_EXT_ERR);
   cp->xerr_status |= XE_SODL_UNRUN;
  }
  goto out;






 case 146:
  if (cp) {
   OUTONB(np, HF_PRT, HF_EXT_ERR);
   cp->xerr_status |= XE_EXTRA_DATA;
   cp->extra_bytes += INL(np, nc_scratcha);
  }
  goto out;



 case 149:
  if (cp) {
   OUTONB(np, HF_PRT, HF_EXT_ERR);
   cp->xerr_status |= XE_BAD_PHASE;
  }
  goto out;



 case 143:
  if (!cp)
   goto out_stuck;
  switch (np->msgin [0]) {





  case 157:
   switch (np->msgin [2]) {
   case 154:
    if (DEBUG_FLAGS & DEBUG_POINTER)
     sym_print_msg(cp, ((void*)0), np->msgin);
    tmp = (np->msgin[3]<<24) + (np->msgin[4]<<16) +
          (np->msgin[5]<<8) + (np->msgin[6]);
    sym_modify_dp(np, tp, cp, tmp);
    return;
   case 152:
    sym_sync_nego(np, tp, cp);
    return;
   case 153:
    sym_ppr_nego(np, tp, cp);
    return;
   case 151:
    sym_wide_nego(np, tp, cp);
    return;
   default:
    goto out_reject;
   }
   break;







  case 156:
   if (DEBUG_FLAGS & DEBUG_POINTER)
    sym_print_msg(cp, ((void*)0), np->msgin);
   if (cp->host_flags & HF_SENSE)
    OUTL_DSP(np, SCRIPTA_BA(np, clrack));
   else
    sym_modify_dp(np, tp, cp, -1);
   return;
  case 155:
   if (INB(np, HS_PRT) == HS_NEGOTIATE)
    sym_nego_rejected(np, tp, cp);
   else {
    sym_print_addr(cp->cmd,
     "M_REJECT received (%x:%x).\n",
     scr_to_cpu(np->lastmsg), np->msgout[0]);
   }
   goto out_clrack;
   break;
  default:
   goto out_reject;
  }
  break;




 case 142:
  sym_print_msg(cp, "WEIRD message received", np->msgin);
  OUTL_DSP(np, SCRIPTB_BA(np, msg_weird));
  return;





 case 141:
  OUTB(np, HS_PRT, HS_BUSY);




 case 140:
  sym_nego_default(np, tp, cp);
  goto out;
 }

out:
 OUTONB_STD();
 return;
out_reject:
 OUTL_DSP(np, SCRIPTB_BA(np, msg_bad));
 return;
out_clrack:
 OUTL_DSP(np, SCRIPTA_BA(np, clrack));
 return;
out_stuck:
 return;
}
