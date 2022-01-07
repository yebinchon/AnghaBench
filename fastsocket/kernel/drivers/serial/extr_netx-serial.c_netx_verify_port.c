
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct serial_struct {scalar_t__ type; } ;


 int EINVAL ;
 scalar_t__ PORT_NETX ;
 scalar_t__ PORT_UNKNOWN ;

__attribute__((used)) static int
netx_verify_port(struct uart_port *port, struct serial_struct *ser)
{
 int ret = 0;

 if (ser->type != PORT_UNKNOWN && ser->type != PORT_NETX)
  ret = -EINVAL;

 return ret;
}
