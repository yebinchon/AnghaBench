
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int u_long ;
struct TYPE_17__ {scalar_t__ carrierwait; } ;
struct TYPE_18__ {int drv_index; int last_dir; int last_l2; int dialing; TYPE_4__ emu; int isdn_driver; scalar_t__ isdn_channel; TYPE_1__* fax; int last_num; int line; } ;
typedef TYPE_5__ modem_info ;
struct TYPE_15__ {int si1; int si2; int eazmsn; int phone; } ;
struct TYPE_16__ {TYPE_2__ setup; TYPE_1__* fax; int num; } ;
struct TYPE_19__ {int command; TYPE_3__ parm; scalar_t__ arg; int driver; } ;
typedef TYPE_6__ isdn_ctrl ;
struct TYPE_20__ {int* mdmreg; int msn; } ;
typedef TYPE_7__ atemu ;
struct TYPE_14__ {int direction; } ;
struct TYPE_13__ {int * num; int lock; int * usage; int * m_idx; scalar_t__* chanmap; int * drvmap; } ;


 int ISDN_CMD_CLREAZ ;
 int ISDN_CMD_DIAL ;
 int ISDN_CMD_SETEAZ ;
 int ISDN_CMD_SETL2 ;
 int ISDN_CMD_SETL3 ;
 int ISDN_PROTO_L2_FAX ;
 int ISDN_PROTO_L2_MODEM ;
 int ISDN_PROTO_L2_TRANS ;
 int ISDN_TIMER_CARRIER ;
 int ISDN_TTY_FAX_CONN_OUT ;
 int ISDN_USAGE_MODEM ;
 int ISDN_USAGE_OUTGOING ;
 int ISDN_USAGE_VOICE ;
 size_t REG_L2PROT ;
 size_t REG_L3PROT ;
 size_t REG_SI1 ;
 size_t REG_SI1I ;
 size_t REG_SI2 ;
 int RESULT_NO_DIALTONE ;
 int* bit2si ;
 TYPE_12__* dev ;
 int isdn_calc_usage (int,int) ;
 int isdn_command (TYPE_6__*) ;
 int isdn_get_free_channel (int,int,int,int,int,int ) ;
 int isdn_info_update () ;
 char* isdn_map_eaz2msn (int ,int ) ;
 int isdn_timer_ctrl (int ,int) ;
 int isdn_tty_modem_result (int ,TYPE_5__*) ;
 int* si2bit ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int sprintf (int ,char*,char*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void
isdn_tty_dial(char *n, modem_info * info, atemu * m)
{
 int usg = ISDN_USAGE_MODEM;
 int si = 7;
 int l2 = m->mdmreg[REG_L2PROT];
 u_long flags;
 isdn_ctrl cmd;
 int i;
 int j;

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
  strcpy(info->last_num, n);
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
  sprintf(cmd.parm.setup.phone, "%s", n);
  sprintf(cmd.parm.setup.eazmsn, "%s",
   isdn_map_eaz2msn(m->msn, info->isdn_driver));
  cmd.parm.setup.si1 = si;
  cmd.parm.setup.si2 = m->mdmreg[REG_SI2];
  cmd.command = ISDN_CMD_DIAL;
  info->dialing = 1;
  info->emu.carrierwait = 0;
  strcpy(dev->num[i], n);
  isdn_info_update();
  isdn_command(&cmd);
  isdn_timer_ctrl(ISDN_TIMER_CARRIER, 1);
 }
}
