
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device_ops {int (* ndo_fcoe_get_wwn ) (struct net_device*,int *,int) ;} ;
struct net_device {struct net_device_ops* netdev_ops; } ;


 int EINVAL ;
 int stub1 (struct net_device*,int *,int) ;

int fcoe_get_wwn(struct net_device *netdev, u64 *wwn, int type)
{






 return -EINVAL;
}
