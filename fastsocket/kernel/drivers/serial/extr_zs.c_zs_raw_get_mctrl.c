
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zs_port {TYPE_1__* scc; } ;
struct TYPE_2__ {struct zs_port* zport; } ;


 size_t ZS_CHAN_A ;
 unsigned int zs_raw_get_ab_mctrl (struct zs_port*,struct zs_port*) ;

__attribute__((used)) static unsigned int zs_raw_get_mctrl(struct zs_port *zport)
{
 struct zs_port *zport_a = &zport->scc->zport[ZS_CHAN_A];

 return zport != zport_a ? zs_raw_get_ab_mctrl(zport_a, zport) : 0;
}
