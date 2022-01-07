
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct b43_phy_ht* ht; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_ht {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct b43_phy_ht* kzalloc (int,int ) ;

__attribute__((used)) static int b43_phy_ht_op_allocate(struct b43_wldev *dev)
{
 struct b43_phy_ht *phy_ht;

 phy_ht = kzalloc(sizeof(*phy_ht), GFP_KERNEL);
 if (!phy_ht)
  return -ENOMEM;
 dev->phy.ht = phy_ht;

 return 0;
}
