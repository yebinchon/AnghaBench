
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct cyclades_port {int x_char; int x_break; scalar_t__ xmit_cnt; int* xmit_buf; size_t xmit_tail; TYPE_1__* tty; int last_active; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ hw_stopped; scalar_t__ stopped; } ;


 scalar_t__ BASE_ADDR ;
 size_t CyIER ;
 size_t CyLICR ;
 unsigned char CyNOTRANS ;
 size_t CyTDR ;
 size_t CyTEOIR ;
 size_t CyTFTC ;
 unsigned char volatile CyTxMpty ;
 unsigned char volatile CyTxRdy ;
 int DEBUG_PORT ;
 int HZ ;
 int IRQ_HANDLED ;
 int NR_PORTS ;
 int PAGE_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 struct cyclades_port* cy_port ;
 int jiffies ;
 int panic (char*) ;
 int tty_wakeup (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t cd2401_tx_interrupt(int irq, void *dev_id)
{
 struct cyclades_port *info;
 volatile unsigned char *base_addr = (unsigned char *)BASE_ADDR;
 int channel;
 int char_count, saved_cnt;
 int outch;


 channel = (u_short) (base_addr[CyLICR] >> 2);







 if ((channel < 0) || (NR_PORTS <= channel)) {
  base_addr[CyIER] &= ~(CyTxMpty | CyTxRdy);
  base_addr[CyTEOIR] = CyNOTRANS;
  return IRQ_HANDLED;
 }
 info = &cy_port[channel];
 info->last_active = jiffies;
 if (info->tty == 0) {
  base_addr[CyIER] &= ~(CyTxMpty | CyTxRdy);
  base_addr[CyTEOIR] = CyNOTRANS;
  return IRQ_HANDLED;
 }


 saved_cnt = char_count = base_addr[CyTFTC];

 if (info->x_char) {
  outch = info->x_char;
  base_addr[CyTDR] = outch;
  char_count--;
  info->x_char = 0;
 }

 if (info->x_break) {
  base_addr[CyTDR] = 0;
  base_addr[CyTDR] = 0x81;
  base_addr[CyTDR] = 0;
  base_addr[CyTDR] = 0x82;
  base_addr[CyTDR] = info->x_break * 200 / HZ;
  base_addr[CyTDR] = 0;
  base_addr[CyTDR] = 0x83;
  char_count -= 7;
  info->x_break = 0;
 }

 while (char_count > 0) {
  if (!info->xmit_cnt) {
   base_addr[CyIER] &= ~(CyTxMpty | CyTxRdy);
   break;
  }
  if (info->xmit_buf == 0) {
   base_addr[CyIER] &= ~(CyTxMpty | CyTxRdy);
   break;
  }
  if (info->tty->stopped || info->tty->hw_stopped) {
   base_addr[CyIER] &= ~(CyTxMpty | CyTxRdy);
   break;
  }
  outch = info->xmit_buf[info->xmit_tail];
  if (outch) {
   info->xmit_cnt--;
   info->xmit_tail = (info->xmit_tail + 1)
       & (PAGE_SIZE - 1);
   base_addr[CyTDR] = outch;
   char_count--;
  } else {
   if (char_count > 1) {
    info->xmit_cnt--;
    info->xmit_tail = (info->xmit_tail + 1)
        & (PAGE_SIZE - 1);
    base_addr[CyTDR] = outch;
    base_addr[CyTDR] = 0;
    char_count--;
    char_count--;
   } else {
    break;
   }
  }
 }

 if (info->xmit_cnt < WAKEUP_CHARS)
  tty_wakeup(info->tty);

 base_addr[CyTEOIR] = (char_count != saved_cnt) ? 0 : CyNOTRANS;
 return IRQ_HANDLED;
}
