
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct slave {TYPE_1__* dev; } ;
struct bonding {int dummy; } ;
struct TYPE_2__ {int * dev_addr; } ;


 int ETH_ALEN ;
 int alb_set_slave_mac_addr (struct slave*,int *) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void alb_swap_mac_addr(struct bonding *bond, struct slave *slave1, struct slave *slave2)
{
 u8 tmp_mac_addr[ETH_ALEN];

 memcpy(tmp_mac_addr, slave1->dev->dev_addr, ETH_ALEN);
 alb_set_slave_mac_addr(slave1, slave2->dev->dev_addr);
 alb_set_slave_mac_addr(slave2, tmp_mac_addr);

}
