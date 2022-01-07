
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int net_dev; } ;
struct i2400m {TYPE_1__ wimax_dev; } ;


 int netif_queue_stopped (int ) ;

__attribute__((used)) static
int debugfs_netdev_queue_stopped_get(void *data, u64 *val)
{
 struct i2400m *i2400m = data;
 *val = netif_queue_stopped(i2400m->wimax_dev.net_dev);
 return 0;
}
