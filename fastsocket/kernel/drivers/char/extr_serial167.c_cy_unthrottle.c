
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char u_char ;
struct TYPE_2__ {int (* chars_in_buffer ) (struct tty_struct*) ;} ;
struct tty_struct {int name; TYPE_1__ ldisc; struct cyclades_port* driver_data; } ;
struct cyclades_port {int line; int x_char; } ;


 scalar_t__ BASE_ADDR ;
 size_t CyCAR ;
 size_t CyMSVR1 ;
 unsigned char CyRTS ;
 scalar_t__ I_IXOFF (struct tty_struct*) ;
 int START_CHAR (struct tty_struct*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*,int ,...) ;
 scalar_t__ serial_paranoia_check (struct cyclades_port*,int ,char*) ;
 int stub1 (struct tty_struct*) ;
 int tty_name (struct tty_struct*,char*) ;

__attribute__((used)) static void cy_unthrottle(struct tty_struct *tty)
{
 struct cyclades_port *info = tty->driver_data;
 unsigned long flags;
 volatile unsigned char *base_addr = (u_char *) BASE_ADDR;
 int channel;
 if (serial_paranoia_check(info, tty->name, "cy_nthrottle")) {
  return;
 }

 if (I_IXOFF(tty)) {
  info->x_char = START_CHAR(tty);

 }

 channel = info->line;

 local_irq_save(flags);
 base_addr[CyCAR] = (u_char) channel;
 base_addr[CyMSVR1] = CyRTS;
 local_irq_restore(flags);
}
