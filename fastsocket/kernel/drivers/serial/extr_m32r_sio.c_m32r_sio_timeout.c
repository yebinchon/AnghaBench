
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int timeout; int lock; } ;
struct uart_sio_port {int timer; TYPE_1__ port; } ;


 int SIOSTS ;
 scalar_t__ jiffies ;
 int m32r_sio_handle_port (struct uart_sio_port*,unsigned int) ;
 int mod_timer (int *,scalar_t__) ;
 unsigned int sio_in (struct uart_sio_port*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void m32r_sio_timeout(unsigned long data)
{
 struct uart_sio_port *up = (struct uart_sio_port *)data;
 unsigned int timeout;
 unsigned int sts;

 sts = sio_in(up, SIOSTS);
 if (sts & 0x5) {
  spin_lock(&up->port.lock);
  m32r_sio_handle_port(up, sts);
  spin_unlock(&up->port.lock);
 }

 timeout = up->port.timeout;
 timeout = timeout > 6 ? (timeout / 2 - 2) : 1;
 mod_timer(&up->timer, jiffies + timeout);
}
