
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mac_addr_value; } ;
struct aggregator {TYPE_1__ partner_system; } ;


 int is_zero_ether_addr (int ) ;

__attribute__((used)) static inline int __agg_has_partner(struct aggregator *agg)
{
 return !is_zero_ether_addr(agg->partner_system.mac_addr_value);
}
