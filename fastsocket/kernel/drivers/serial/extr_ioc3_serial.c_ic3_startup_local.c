
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int line; } ;
struct ioc3_port {int dummy; } ;


 scalar_t__ IS_RS232 (int ) ;
 int NOT_PROGRESS () ;
 int PROTO_RS232 ;
 int PROTO_RS422 ;
 struct ioc3_port* get_ioc3_port (struct uart_port*) ;
 int ioc3_set_proto (struct ioc3_port*,int ) ;
 int local_open (struct ioc3_port*) ;

__attribute__((used)) static inline int ic3_startup_local(struct uart_port *the_port)
{
 struct ioc3_port *port;

 if (!the_port) {
  NOT_PROGRESS();
  return -1;
 }

 port = get_ioc3_port(the_port);
 if (!port) {
  NOT_PROGRESS();
  return -1;
 }

 local_open(port);


 ioc3_set_proto(port, IS_RS232(the_port->line) ? PROTO_RS232 :
       PROTO_RS422);
 return 0;
}
