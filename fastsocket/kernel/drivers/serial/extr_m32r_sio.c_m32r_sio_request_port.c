
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int membase; int mapbase; } ;
struct uart_sio_port {TYPE_1__ port; } ;
struct uart_port {int dummy; } ;
struct resource {int end; int start; } ;


 int ENOMEM ;
 int UPF_IOREMAP ;
 int ioremap (int ,int) ;
 int m32r_sio_request_std_resource (struct uart_sio_port*,struct resource**) ;
 int release_resource (struct resource*) ;

__attribute__((used)) static int m32r_sio_request_port(struct uart_port *port)
{
 struct uart_sio_port *up = (struct uart_sio_port *)port;
 struct resource *res = ((void*)0);
 int ret = 0;

 ret = m32r_sio_request_std_resource(up, &res);




 if (ret == 0 && up->port.flags & UPF_IOREMAP) {
  int size = res->end - res->start + 1;

  up->port.membase = ioremap(up->port.mapbase, size);
  if (!up->port.membase)
   ret = -ENOMEM;
 }

 if (ret < 0) {
  if (res)
   release_resource(res);
 }

 return ret;
}
