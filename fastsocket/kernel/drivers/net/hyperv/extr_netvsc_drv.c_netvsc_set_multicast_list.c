
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_context {int work; } ;
struct net_device {int dummy; } ;


 struct net_device_context* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void netvsc_set_multicast_list(struct net_device *net)
{
 struct net_device_context *net_device_ctx = netdev_priv(net);

 schedule_work(&net_device_ctx->work);
}
