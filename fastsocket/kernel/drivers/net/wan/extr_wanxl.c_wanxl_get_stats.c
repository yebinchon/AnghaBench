
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device_stats {scalar_t__ rx_frame_errors; scalar_t__ rx_over_errors; scalar_t__ rx_errors; } ;
struct net_device {struct net_device_stats stats; } ;
typedef int port_t ;
struct TYPE_2__ {scalar_t__ rx_frame_errors; scalar_t__ rx_overruns; } ;


 int * dev_to_port (struct net_device*) ;
 TYPE_1__* get_status (int *) ;

__attribute__((used)) static struct net_device_stats *wanxl_get_stats(struct net_device *dev)
{
 port_t *port = dev_to_port(dev);

 dev->stats.rx_over_errors = get_status(port)->rx_overruns;
 dev->stats.rx_frame_errors = get_status(port)->rx_frame_errors;
 dev->stats.rx_errors = dev->stats.rx_over_errors +
  dev->stats.rx_frame_errors;
 return &dev->stats;
}
