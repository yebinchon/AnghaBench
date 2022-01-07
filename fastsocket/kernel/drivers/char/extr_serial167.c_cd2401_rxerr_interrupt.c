
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct tty_struct {int dummy; } ;
struct cyclades_port {scalar_t__ tty; unsigned char ignore_status_mask; unsigned char read_status_mask; int flags; int last_active; } ;
typedef int irqreturn_t ;


 int ASYNC_SAK ;
 scalar_t__ BASE_ADDR ;
 unsigned char CyBREAK ;
 unsigned char CyFRAME ;
 size_t CyLICR ;
 unsigned char CyNOTRANS ;
 unsigned char CyOVERRUN ;
 unsigned char CyPARITY ;
 size_t CyRDR ;
 size_t CyREOIR ;
 size_t CyRFOC ;
 size_t CyRISR ;
 unsigned char CyTIMEOUT ;
 int IRQ_HANDLED ;
 int TTY_BREAK ;
 int TTY_FRAME ;
 int TTY_NORMAL ;
 int TTY_OVERRUN ;
 int TTY_PARITY ;
 struct cyclades_port* cy_port ;
 int do_SAK (struct tty_struct*) ;
 int jiffies ;
 scalar_t__ tty_buffer_request_room (struct tty_struct*,int) ;
 int tty_insert_flip_char (struct tty_struct*,char,int ) ;
 int tty_schedule_flip (struct tty_struct*) ;

__attribute__((used)) static irqreturn_t cd2401_rxerr_interrupt(int irq, void *dev_id)
{
 struct tty_struct *tty;
 struct cyclades_port *info;
 volatile unsigned char *base_addr = (unsigned char *)BASE_ADDR;
 unsigned char err, rfoc;
 int channel;
 char data;


 channel = (u_short) (base_addr[CyLICR] >> 2);
 info = &cy_port[channel];
 info->last_active = jiffies;

 if ((err = base_addr[CyRISR]) & CyTIMEOUT) {

  base_addr[CyREOIR] = CyNOTRANS;
  return IRQ_HANDLED;
 }




 if ((rfoc = base_addr[CyRFOC]) != 0)
  data = base_addr[CyRDR];
 else
  data = 0;


 if (info->tty == 0) {
  base_addr[CyREOIR] = rfoc ? 0 : CyNOTRANS;
  return IRQ_HANDLED;
 } else {
  tty = info->tty;
  if (err & info->ignore_status_mask) {
   base_addr[CyREOIR] = rfoc ? 0 : CyNOTRANS;
   return IRQ_HANDLED;
  }
  if (tty_buffer_request_room(tty, 1) != 0) {
   if (err & info->read_status_mask) {
    if (err & CyBREAK) {
     tty_insert_flip_char(tty, data,
            TTY_BREAK);
     if (info->flags & ASYNC_SAK) {
      do_SAK(tty);
     }
    } else if (err & CyFRAME) {
     tty_insert_flip_char(tty, data,
            TTY_FRAME);
    } else if (err & CyPARITY) {
     tty_insert_flip_char(tty, data,
            TTY_PARITY);
    } else if (err & CyOVERRUN) {
     tty_insert_flip_char(tty, 0,
            TTY_OVERRUN);





     if (tty_buffer_request_room(tty, 1) !=
         0) {
      tty_insert_flip_char(tty, data,
             TTY_FRAME);
     }




    } else {
     tty_insert_flip_char(tty, 0,
            TTY_NORMAL);
    }
   } else {
    tty_insert_flip_char(tty, data, TTY_NORMAL);
   }
  } else {


  }
 }
 tty_schedule_flip(tty);

 base_addr[CyREOIR] = rfoc ? 0 : CyNOTRANS;
 return IRQ_HANDLED;
}
