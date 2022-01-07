
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int line; } ;


 char const* MPSC_DRIVER_NAME ;
 int pr_debug (char*,int ,char const*) ;

__attribute__((used)) static const char *mpsc_type(struct uart_port *port)
{
 pr_debug("mpsc_type[%d]: port type: %s\n", port->line,MPSC_DRIVER_NAME);
 return MPSC_DRIVER_NAME;
}
