
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u_char ;
struct tty_struct {scalar_t__ hw_stopped; scalar_t__ stopped; int name; struct cyclades_port* driver_data; } ;
struct cyclades_port {scalar_t__ xmit_cnt; int line; int xmit_buf; } ;


 scalar_t__ BASE_ADDR ;
 size_t CyCAR ;
 size_t CyIER ;
 unsigned char volatile CyTxMpty ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*,int ) ;
 scalar_t__ serial_paranoia_check (struct cyclades_port*,int ,char*) ;

__attribute__((used)) static void cy_flush_chars(struct tty_struct *tty)
{
 struct cyclades_port *info = tty->driver_data;
 unsigned long flags;
 volatile unsigned char *base_addr = (u_char *) BASE_ADDR;
 int channel;





 if (serial_paranoia_check(info, tty->name, "cy_flush_chars"))
  return;

 if (info->xmit_cnt <= 0 || tty->stopped
     || tty->hw_stopped || !info->xmit_buf)
  return;

 channel = info->line;

 local_irq_save(flags);
 base_addr[CyCAR] = channel;
 base_addr[CyIER] |= CyTxMpty;
 local_irq_restore(flags);
}
