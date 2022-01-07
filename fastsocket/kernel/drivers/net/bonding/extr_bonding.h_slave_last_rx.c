
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slave {unsigned long last_arp_rx; TYPE_1__* dev; } ;
struct bonding {int dummy; } ;
struct TYPE_2__ {unsigned long last_rx; } ;


 scalar_t__ slave_do_arp_validate (struct bonding*,struct slave*) ;

__attribute__((used)) static inline unsigned long slave_last_rx(struct bonding *bond,
     struct slave *slave)
{
 if (slave_do_arp_validate(bond, slave))
  return slave->last_arp_rx;

 return slave->dev->last_rx;
}
