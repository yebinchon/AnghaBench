
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ioc4_port {TYPE_2__* ip_mem; struct hooks* ip_hooks; } ;
struct hooks {size_t rs422_select_pin; } ;
struct TYPE_4__ {TYPE_1__* gppr; } ;
struct TYPE_3__ {int raw; } ;




 int writel (int,int *) ;

__attribute__((used)) static int ioc4_set_proto(struct ioc4_port *port, int proto)
{
 struct hooks *hooks = port->ip_hooks;

 switch (proto) {
 case 129:

  writel(0, (&port->ip_mem->gppr[hooks->rs422_select_pin].raw));
  break;

 case 128:

  writel(1, (&port->ip_mem->gppr[hooks->rs422_select_pin].raw));
  break;

 default:
  return 1;
 }
 return 0;
}
