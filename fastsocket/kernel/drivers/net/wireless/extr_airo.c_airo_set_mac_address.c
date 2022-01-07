
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; struct airo_info* ml_priv; } ;
struct TYPE_4__ {int macAddr; } ;
struct airo_info {TYPE_3__* wifidev; TYPE_2__* dev; int flags; TYPE_1__ config; } ;
struct TYPE_6__ {int dev_addr; } ;
struct TYPE_5__ {int dev_addr; } ;


 int FLAG_COMMIT ;
 int disable_MAC (struct airo_info*,int) ;
 int enable_MAC (struct airo_info*,int) ;
 int memcpy (int ,int ,int ) ;
 int readConfigRid (struct airo_info*,int) ;
 int set_bit (int ,int *) ;
 int writeConfigRid (struct airo_info*,int) ;

__attribute__((used)) static int airo_set_mac_address(struct net_device *dev, void *p)
{
 struct airo_info *ai = dev->ml_priv;
 struct sockaddr *addr = p;

 readConfigRid(ai, 1);
 memcpy (ai->config.macAddr, addr->sa_data, dev->addr_len);
 set_bit (FLAG_COMMIT, &ai->flags);
 disable_MAC(ai, 1);
 writeConfigRid (ai, 1);
 enable_MAC(ai, 1);
 memcpy (ai->dev->dev_addr, addr->sa_data, dev->addr_len);
 if (ai->wifidev)
  memcpy (ai->wifidev->dev_addr, addr->sa_data, dev->addr_len);
 return 0;
}
