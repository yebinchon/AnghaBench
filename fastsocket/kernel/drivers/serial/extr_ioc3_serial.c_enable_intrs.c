
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ioc3_port {int ip_idd; int ip_is; TYPE_1__* ip_card; } ;
struct TYPE_2__ {int ic_enable; } ;


 int ioc3_enable (int ,int ,int) ;

__attribute__((used)) static void enable_intrs(struct ioc3_port *port, uint32_t mask)
{
 if ((port->ip_card->ic_enable & mask) != mask) {
  port->ip_card->ic_enable |= mask;
  ioc3_enable(port->ip_is, port->ip_idd, mask);
 }
}
