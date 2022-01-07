
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u_char ;
struct tty_struct {struct cyclades_port* driver_data; } ;
struct file {int dummy; } ;
struct cyclades_port {int line; } ;


 scalar_t__ BASE_ADDR ;
 size_t CyCAR ;
 unsigned char CyCTS ;
 unsigned char CyDCD ;
 unsigned char CyDSR ;
 unsigned char CyDTR ;
 size_t CyMSVR1 ;
 size_t CyMSVR2 ;
 unsigned char CyRTS ;
 int TIOCM_CAR ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static int cy_tiocmget(struct tty_struct *tty, struct file *file)
{
 struct cyclades_port *info = tty->driver_data;
 int channel;
 volatile unsigned char *base_addr = (u_char *) BASE_ADDR;
 unsigned long flags;
 unsigned char status;

 channel = info->line;

 local_irq_save(flags);
 base_addr[CyCAR] = (u_char) channel;
 status = base_addr[CyMSVR1] | base_addr[CyMSVR2];
 local_irq_restore(flags);

 return ((status & CyRTS) ? TIOCM_RTS : 0)
     | ((status & CyDTR) ? TIOCM_DTR : 0)
     | ((status & CyDCD) ? TIOCM_CAR : 0)
     | ((status & CyDSR) ? TIOCM_DSR : 0)
     | ((status & CyCTS) ? TIOCM_CTS : 0);
}
