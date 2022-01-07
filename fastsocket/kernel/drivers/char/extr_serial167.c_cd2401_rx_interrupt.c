
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct tty_struct {int dummy; } ;
struct TYPE_2__ {int char_count; int char_max; int char_last; int int_count; } ;
struct cyclades_port {scalar_t__ tty; TYPE_1__ mon; int last_active; } ;
typedef int irqreturn_t ;


 scalar_t__ BASE_ADDR ;
 size_t CyLICR ;
 unsigned char CyNOTRANS ;
 size_t CyRDR ;
 size_t CyREOIR ;
 size_t CyRFOC ;
 int DEBUG_PORT ;
 int IRQ_HANDLED ;
 int TTY_NORMAL ;
 struct cyclades_port* cy_port ;
 int jiffies ;
 int queueDebugChar (char) ;
 int tty_buffer_request_room (struct tty_struct*,int) ;
 int tty_insert_flip_char (struct tty_struct*,char,int ) ;
 int tty_schedule_flip (struct tty_struct*) ;
 int udelay (long) ;

__attribute__((used)) static irqreturn_t cd2401_rx_interrupt(int irq, void *dev_id)
{
 struct tty_struct *tty;
 struct cyclades_port *info;
 volatile unsigned char *base_addr = (unsigned char *)BASE_ADDR;
 int channel;
 char data;
 int char_count;
 int save_cnt;
 int len;


 channel = (u_short) (base_addr[CyLICR] >> 2);
 info = &cy_port[channel];
 info->last_active = jiffies;
 save_cnt = char_count = base_addr[CyRFOC];
 if (info->tty == 0) {
  while (char_count--) {
   data = base_addr[CyRDR];
  }
 } else {
  tty = info->tty;
  len = tty_buffer_request_room(tty, char_count);
  while (len--) {
   data = base_addr[CyRDR];
   tty_insert_flip_char(tty, data, TTY_NORMAL);



  }
  tty_schedule_flip(tty);
 }

 base_addr[CyREOIR] = save_cnt ? 0 : CyNOTRANS;
 return IRQ_HANDLED;
}
