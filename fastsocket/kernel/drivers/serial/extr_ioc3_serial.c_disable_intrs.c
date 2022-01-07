
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ioc3_port {TYPE_1__* ip_card; int ip_idd; int ip_is; } ;
struct TYPE_2__ {int ic_enable; } ;


 int ioc3_disable (int ,int ,int) ;

__attribute__((used)) static inline void disable_intrs(struct ioc3_port *port, uint32_t mask)
{
 if (port->ip_card->ic_enable & mask) {
  ioc3_disable(port->ip_is, port->ip_idd, mask);
  port->ip_card->ic_enable &= ~mask;
 }
}
