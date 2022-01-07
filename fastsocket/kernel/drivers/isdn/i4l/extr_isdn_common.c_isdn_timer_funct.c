
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_2__ {int tflags; int timer; } ;


 scalar_t__ ISDN_TIMER_02SEC ;
 scalar_t__ ISDN_TIMER_1SEC ;
 int ISDN_TIMER_CARRIER ;
 int ISDN_TIMER_FAST ;
 int ISDN_TIMER_MODEMPLUS ;
 int ISDN_TIMER_MODEMREAD ;
 int ISDN_TIMER_MODEMRING ;
 int ISDN_TIMER_MODEMXMIT ;
 int ISDN_TIMER_NETDIAL ;
 int ISDN_TIMER_NETHANGUP ;
 scalar_t__ ISDN_TIMER_RES ;
 scalar_t__ ISDN_TIMER_RINGING ;
 int ISDN_TIMER_SLOW ;
 TYPE_1__* dev ;
 int isdn_net_autohup () ;
 int isdn_net_dial () ;
 scalar_t__ isdn_timer_cnt1 ;
 scalar_t__ isdn_timer_cnt2 ;
 scalar_t__ isdn_timer_cnt3 ;
 int isdn_tty_carrier_timeout () ;
 int isdn_tty_modem_escape () ;
 int isdn_tty_modem_ring () ;
 int isdn_tty_modem_xmit () ;
 int isdn_tty_readmodem () ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void
isdn_timer_funct(ulong dummy)
{
 int tf = dev->tflags;
 if (tf & ISDN_TIMER_FAST) {
  if (tf & ISDN_TIMER_MODEMREAD)
   isdn_tty_readmodem();
  if (tf & ISDN_TIMER_MODEMPLUS)
   isdn_tty_modem_escape();
  if (tf & ISDN_TIMER_MODEMXMIT)
   isdn_tty_modem_xmit();
 }
 if (tf & ISDN_TIMER_SLOW) {
  if (++isdn_timer_cnt1 >= ISDN_TIMER_02SEC) {
   isdn_timer_cnt1 = 0;
   if (tf & ISDN_TIMER_NETDIAL)
    isdn_net_dial();
  }
  if (++isdn_timer_cnt2 >= ISDN_TIMER_1SEC) {
   isdn_timer_cnt2 = 0;
   if (tf & ISDN_TIMER_NETHANGUP)
    isdn_net_autohup();
   if (++isdn_timer_cnt3 >= ISDN_TIMER_RINGING) {
    isdn_timer_cnt3 = 0;
    if (tf & ISDN_TIMER_MODEMRING)
     isdn_tty_modem_ring();
   }
   if (tf & ISDN_TIMER_CARRIER)
    isdn_tty_carrier_timeout();
  }
 }
 if (tf)
  mod_timer(&dev->timer, jiffies+ISDN_TIMER_RES);
}
