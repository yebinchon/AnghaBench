
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct uart_cpm_port {int flags; } ;


 int FLAG_CONSOLE ;
 int cpm_uart_freebuf (struct uart_cpm_port*) ;

__attribute__((used)) static void cpm_uart_release_port(struct uart_port *port)
{
 struct uart_cpm_port *pinfo = (struct uart_cpm_port *)port;

 if (!(pinfo->flags & FLAG_CONSOLE))
  cpm_uart_freebuf(pinfo);
}
