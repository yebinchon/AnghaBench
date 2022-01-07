
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u_char ;
struct tty_struct {int name; struct cyclades_port* driver_data; } ;
struct cyclades_port {int line; } ;


 scalar_t__ BASE_ADDR ;
 size_t CyCAR ;
 size_t CyIER ;
 unsigned char volatile CyTxMpty ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*,int ) ;
 scalar_t__ serial_paranoia_check (struct cyclades_port*,int ,char*) ;

__attribute__((used)) static void cy_start(struct tty_struct *tty)
{
 struct cyclades_port *info = tty->driver_data;
 volatile unsigned char *base_addr = (unsigned char *)BASE_ADDR;
 int channel;
 unsigned long flags;





 if (serial_paranoia_check(info, tty->name, "cy_start"))
  return;

 channel = info->line;

 local_irq_save(flags);
 base_addr[CyCAR] = (u_char) (channel);
 base_addr[CyIER] |= CyTxMpty;
 local_irq_restore(flags);
}
