
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct macvlan_dev {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev_addr; } ;


 int ETH_ALEN ;
 int macvlan_hash_add (struct macvlan_dev*) ;
 int macvlan_hash_del (struct macvlan_dev*) ;
 int memcpy (int ,unsigned char const*,int ) ;

__attribute__((used)) static void macvlan_hash_change_addr(struct macvlan_dev *vlan,
     const unsigned char *addr)
{
 macvlan_hash_del(vlan);



 memcpy(vlan->dev->dev_addr, addr, ETH_ALEN);
 macvlan_hash_add(vlan);
}
