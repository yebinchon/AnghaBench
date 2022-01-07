
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct net_device_stats {void* rx_packets; void* tx_bytes; void* rx_bytes; void* tx_packets; } ;
struct net_device {int dummy; } ;
struct ehea_port {int num_def_qps; struct net_device_stats stats; TYPE_1__* port_res; } ;
struct TYPE_2__ {scalar_t__ tx_bytes; scalar_t__ tx_packets; scalar_t__ rx_bytes; scalar_t__ rx_packets; } ;


 struct ehea_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *ehea_get_stats(struct net_device *dev)
{
 struct ehea_port *port = netdev_priv(dev);
 struct net_device_stats *stats = &port->stats;
 u64 rx_packets = 0, tx_packets = 0, rx_bytes = 0, tx_bytes = 0;
 int i;

 for (i = 0; i < port->num_def_qps; i++) {
  rx_packets += port->port_res[i].rx_packets;
  rx_bytes += port->port_res[i].rx_bytes;
 }

 for (i = 0; i < port->num_def_qps; i++) {
  tx_packets += port->port_res[i].tx_packets;
  tx_bytes += port->port_res[i].tx_bytes;
 }

 stats->tx_packets = tx_packets;
 stats->rx_bytes = rx_bytes;
 stats->tx_bytes = tx_bytes;
 stats->rx_packets = rx_packets;

 return &port->stats;
}
