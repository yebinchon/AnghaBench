
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ mii_data; int funct; } ;
typedef TYPE_1__ phy_cmd_t ;


 int mii_queue (struct net_device*,scalar_t__,int ) ;
 scalar_t__ mk_mii_end ;

__attribute__((used)) static void mii_do_cmd(struct net_device *dev, const phy_cmd_t *c)
{
 if(!c)
  return;

 for (; c->mii_data != mk_mii_end; c++)
  mii_queue(dev, c->mii_data, c->funct);
}
