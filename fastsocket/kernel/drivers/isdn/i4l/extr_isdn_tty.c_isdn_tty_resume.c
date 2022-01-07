
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int ulong ;
struct TYPE_16__ {int drv_index; int last_dir; int last_l2; int dialing; int isdn_driver; scalar_t__ isdn_channel; int line; } ;
typedef TYPE_4__ modem_info ;
struct TYPE_13__ {scalar_t__ Controller; } ;
struct TYPE_14__ {int Length; int* para; TYPE_1__ adr; int Subcommand; int Command; } ;
struct TYPE_15__ {TYPE_2__ cmsg; int num; } ;
struct TYPE_17__ {int command; TYPE_3__ parm; scalar_t__ arg; int driver; } ;
typedef TYPE_5__ isdn_ctrl ;
struct TYPE_18__ {int* mdmreg; int msn; } ;
typedef TYPE_6__ atemu ;
struct TYPE_12__ {int lock; int * usage; int * m_idx; scalar_t__* chanmap; int * drvmap; } ;


 int CAPI_FACILITY ;
 int CAPI_PUT_MESSAGE ;
 int CAPI_REQ ;
 int ISDN_CMD_CLREAZ ;
 int ISDN_CMD_SETEAZ ;
 int ISDN_CMD_SETL2 ;
 int ISDN_CMD_SETL3 ;
 int ISDN_PROTO_L2_FAX ;
 int ISDN_PROTO_L2_MODEM ;
 int ISDN_PROTO_L2_TRANS ;
 int ISDN_TIMER_CARRIER ;
 int ISDN_USAGE_MODEM ;
 int ISDN_USAGE_OUTGOING ;
 int ISDN_USAGE_VOICE ;
 size_t REG_L2PROT ;
 size_t REG_L3PROT ;
 size_t REG_SI1 ;
 size_t REG_SI1I ;
 int RESULT_NO_DIALTONE ;
 int* bit2si ;
 TYPE_11__* dev ;
 int isdn_calc_usage (int,int) ;
 int isdn_command (TYPE_5__*) ;
 int isdn_get_free_channel (int,int,int,int,int,int ) ;
 int isdn_info_update () ;
 int isdn_map_eaz2msn (int ,int ) ;
 int isdn_timer_ctrl (int ,int) ;
 int isdn_tty_modem_result (int ,TYPE_4__*) ;
 int* si2bit ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int strcpy (int ,int ) ;
 int strlen (char*) ;
 int strncpy (int*,char*,int) ;

__attribute__((used)) static void
isdn_tty_resume(char *id, modem_info * info, atemu * m)
{
 int usg = ISDN_USAGE_MODEM;
 int si = 7;
 int l2 = m->mdmreg[REG_L2PROT];
 isdn_ctrl cmd;
 ulong flags;
 int i;
 int j;
 int l;

 l = strlen(id);
 for (j = 7; j >= 0; j--)
  if (m->mdmreg[REG_SI1] & (1 << j)) {
   si = bit2si[j];
   break;
  }
 usg = isdn_calc_usage(si, l2);
 m->mdmreg[REG_SI1I] = si2bit[si];
 spin_lock_irqsave(&dev->lock, flags);
 i = isdn_get_free_channel(usg, l2, m->mdmreg[REG_L3PROT], -1, -1, m->msn);
 if (i < 0) {
  spin_unlock_irqrestore(&dev->lock, flags);
  isdn_tty_modem_result(RESULT_NO_DIALTONE, info);
 } else {
  info->isdn_driver = dev->drvmap[i];
  info->isdn_channel = dev->chanmap[i];
  info->drv_index = i;
  dev->m_idx[i] = info->line;
  dev->usage[i] |= ISDN_USAGE_OUTGOING;
  info->last_dir = 1;

  isdn_info_update();
  spin_unlock_irqrestore(&dev->lock, flags);
  cmd.driver = info->isdn_driver;
  cmd.arg = info->isdn_channel;
  cmd.command = ISDN_CMD_CLREAZ;
  isdn_command(&cmd);
  strcpy(cmd.parm.num, isdn_map_eaz2msn(m->msn, info->isdn_driver));
  cmd.driver = info->isdn_driver;
  cmd.command = ISDN_CMD_SETEAZ;
  isdn_command(&cmd);
  cmd.driver = info->isdn_driver;
  cmd.command = ISDN_CMD_SETL2;
  info->last_l2 = l2;
  cmd.arg = info->isdn_channel + (l2 << 8);
  isdn_command(&cmd);
  cmd.driver = info->isdn_driver;
  cmd.command = ISDN_CMD_SETL3;
  cmd.arg = info->isdn_channel + (m->mdmreg[REG_L3PROT] << 8);
  isdn_command(&cmd);
  cmd.driver = info->isdn_driver;
  cmd.arg = info->isdn_channel;
  cmd.parm.cmsg.Length = l+18;
  cmd.parm.cmsg.Command = CAPI_FACILITY;
  cmd.parm.cmsg.Subcommand = CAPI_REQ;
  cmd.parm.cmsg.adr.Controller = info->isdn_driver + 1;
  cmd.parm.cmsg.para[0] = 3;
  cmd.parm.cmsg.para[1] = 0;
  cmd.parm.cmsg.para[2] = l+3;
  cmd.parm.cmsg.para[3] = 5;
  cmd.parm.cmsg.para[4] = 0;
  cmd.parm.cmsg.para[5] = l;
  strncpy(&cmd.parm.cmsg.para[6], id, l);
  cmd.command =CAPI_PUT_MESSAGE;
  info->dialing = 1;

  isdn_info_update();
  isdn_command(&cmd);
  isdn_timer_ctrl(ISDN_TIMER_CARRIER, 1);
 }
}
