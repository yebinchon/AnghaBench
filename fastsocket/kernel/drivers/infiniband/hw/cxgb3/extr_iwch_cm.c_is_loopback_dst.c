
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; } ;
struct iw_cm_id {TYPE_2__ remote_addr; } ;


 int dev_put (struct net_device*) ;
 int init_net ;
 struct net_device* ip_dev_find (int *,int ) ;

__attribute__((used)) static int is_loopback_dst(struct iw_cm_id *cm_id)
{
 struct net_device *dev;

 dev = ip_dev_find(&init_net, cm_id->remote_addr.sin_addr.s_addr);
 if (!dev)
  return 0;
 dev_put(dev);
 return 1;
}
