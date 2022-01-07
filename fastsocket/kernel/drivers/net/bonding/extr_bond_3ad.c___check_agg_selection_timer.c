
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port {int dummy; } ;
struct bonding {int dummy; } ;
struct TYPE_2__ {scalar_t__ agg_select_timer; } ;


 TYPE_1__ BOND_AD_INFO (struct bonding*) ;
 struct bonding* __get_bond_by_port (struct port*) ;

__attribute__((used)) static inline int __check_agg_selection_timer(struct port *port)
{
 struct bonding *bond = __get_bond_by_port(port);

 if (bond == ((void*)0)) {
  return 0;
 }

 return BOND_AD_INFO(bond).agg_select_timer ? 1 : 0;
}
