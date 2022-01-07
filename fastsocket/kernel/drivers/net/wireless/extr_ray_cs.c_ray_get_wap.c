
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int sa_family; int sa_data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_3__ {int bss_id; } ;
typedef TYPE_1__ ray_dev_t ;


 int ARPHRD_ETHER ;
 int ETH_ALEN ;
 int memcpy (int ,int ,int ) ;
 TYPE_1__* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ray_get_wap(struct net_device *dev,
         struct iw_request_info *info,
         struct sockaddr *awrq, char *extra)
{
 ray_dev_t *local = netdev_priv(dev);

 memcpy(awrq->sa_data, local->bss_id, ETH_ALEN);
 awrq->sa_family = ARPHRD_ETHER;

 return 0;
}
