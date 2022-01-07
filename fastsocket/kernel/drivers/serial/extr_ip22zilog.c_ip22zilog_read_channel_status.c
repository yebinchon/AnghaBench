
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zilog_channel {int control; } ;
struct uart_port {int dummy; } ;


 struct zilog_channel* ZILOG_CHANNEL_FROM_PORT (struct uart_port*) ;
 int ZSDELAY () ;
 unsigned char readb (int *) ;

__attribute__((used)) static __inline__ unsigned char ip22zilog_read_channel_status(struct uart_port *port)
{
 struct zilog_channel *channel;
 unsigned char status;

 channel = ZILOG_CHANNEL_FROM_PORT(port);
 status = readb(&channel->control);
 ZSDELAY();

 return status;
}
