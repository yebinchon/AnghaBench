
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned char CTS ;
 unsigned char DCD ;
 unsigned char SYNC ;
 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned char sunzilog_read_channel_status (struct uart_port*) ;

__attribute__((used)) static unsigned int sunzilog_get_mctrl(struct uart_port *port)
{
 unsigned char status;
 unsigned int ret;

 status = sunzilog_read_channel_status(port);

 ret = 0;
 if (status & DCD)
  ret |= TIOCM_CAR;
 if (status & SYNC)
  ret |= TIOCM_DSR;
 if (status & CTS)
  ret |= TIOCM_CTS;

 return ret;
}
