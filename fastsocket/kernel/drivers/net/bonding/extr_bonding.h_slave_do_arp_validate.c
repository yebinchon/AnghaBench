
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slave {int state; } ;
struct TYPE_2__ {int arp_validate; } ;
struct bonding {TYPE_1__ params; } ;



__attribute__((used)) static inline int slave_do_arp_validate(struct bonding *bond,
     struct slave *slave)
{
 return bond->params.arp_validate & (1 << slave->state);
}
