
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_8__ {int* mdmreg; scalar_t__* vpar; } ;
struct TYPE_9__ {int vonline; int mcr; int rcvsched; int isdn_channel; int isdn_driver; TYPE_2__ emu; struct tty_struct* tty; scalar_t__ online; } ;
typedef TYPE_3__ modem_info ;
struct TYPE_7__ {TYPE_3__* info; } ;
struct TYPE_10__ {int* m_idx; TYPE_1__ mdm; } ;


 int BIT_CPPP ;
 int ISDN_MAX_CHANNELS ;
 int ISDN_TIMER_MODEMREAD ;
 size_t REG_CPPP ;
 int UART_MCR_RTS ;
 TYPE_6__* dev ;
 int isdn_audio_eval_dtmf (TYPE_3__*) ;
 int isdn_audio_eval_silence (TYPE_3__*) ;
 int isdn_readbchan_tty (int ,int ,struct tty_struct*,int) ;
 int isdn_timer_ctrl (int ,int ) ;
 int tty_flip_buffer_push (struct tty_struct*) ;

void
isdn_tty_readmodem(void)
{
 int resched = 0;
 int midx;
 int i;
 int r;
 struct tty_struct *tty;
 modem_info *info;

 for (i = 0; i < ISDN_MAX_CHANNELS; i++) {
  if ((midx = dev->m_idx[i]) >= 0) {
   info = &dev->mdm.info[midx];
   if (info->online) {
    r = 0;





    if ((tty = info->tty)) {
     if (info->mcr & UART_MCR_RTS) {

      if (!(info->emu.mdmreg[REG_CPPP] & BIT_CPPP))
       r = isdn_readbchan_tty(info->isdn_driver, info->isdn_channel, tty, 0);
      else
       r = isdn_readbchan_tty(info->isdn_driver, info->isdn_channel, tty, 1);
      if (r)
       tty_flip_buffer_push(tty);
     } else
      r = 1;
    } else
     r = 1;
    if (r) {
     info->rcvsched = 0;
     resched = 1;
    } else
     info->rcvsched = 1;
   }
  }
 }
 if (!resched)
  isdn_timer_ctrl(ISDN_TIMER_MODEMREAD, 0);
}
