
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;



__attribute__((used)) static const char *sc26xx_type(struct uart_port *port)
{
 return "SC26XX";
}
