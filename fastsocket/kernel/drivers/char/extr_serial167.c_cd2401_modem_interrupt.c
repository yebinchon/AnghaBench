
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_short ;
struct cyclades_port {int flags; TYPE_1__* tty; int open_wait; int last_active; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int stopped; } ;


 int ASYNC_CHECK_CD ;
 int ASYNC_CTS_FLOW ;
 int ASYNC_NORMAL_ACTIVE ;
 scalar_t__ BASE_ADDR ;
 int CyCTS ;
 int CyDCD ;
 int CyDSR ;
 size_t CyIER ;
 size_t CyLICR ;
 size_t CyMEOIR ;
 size_t CyMISR ;
 size_t CyMSVR1 ;
 unsigned char volatile CyTxMpty ;
 unsigned char volatile CyTxRdy ;
 int IRQ_HANDLED ;
 struct cyclades_port* cy_port ;
 int jiffies ;
 int tty_hangup (TYPE_1__*) ;
 int tty_wakeup (TYPE_1__*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t cd2401_modem_interrupt(int irq, void *dev_id)
{
 struct cyclades_port *info;
 volatile unsigned char *base_addr = (unsigned char *)BASE_ADDR;
 int channel;
 int mdm_change;
 int mdm_status;


 channel = (u_short) (base_addr[CyLICR] >> 2);
 info = &cy_port[channel];
 info->last_active = jiffies;

 mdm_change = base_addr[CyMISR];
 mdm_status = base_addr[CyMSVR1];

 if (info->tty == 0) {
  ;
 } else {
  if ((mdm_change & CyDCD)
      && (info->flags & ASYNC_CHECK_CD)) {
   if (mdm_status & CyDCD) {

    wake_up_interruptible(&info->open_wait);
   } else {

    tty_hangup(info->tty);
    wake_up_interruptible(&info->open_wait);
    info->flags &= ~ASYNC_NORMAL_ACTIVE;
   }
  }
  if ((mdm_change & CyCTS)
      && (info->flags & ASYNC_CTS_FLOW)) {
   if (info->tty->stopped) {
    if (mdm_status & CyCTS) {

     info->tty->stopped = 0;
     base_addr[CyIER] |= CyTxMpty;
     tty_wakeup(info->tty);
    }
   } else {
    if (!(mdm_status & CyCTS)) {

     info->tty->stopped = 1;
     base_addr[CyIER] &=
         ~(CyTxMpty | CyTxRdy);
    }
   }
  }
  if (mdm_status & CyDSR) {
  }
 }
 base_addr[CyMEOIR] = 0;
 return IRQ_HANDLED;
}
