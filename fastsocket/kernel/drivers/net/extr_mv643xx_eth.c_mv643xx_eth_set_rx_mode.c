
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int mv643xx_eth_program_multicast_filter (struct net_device*) ;
 int mv643xx_eth_program_unicast_filter (struct net_device*) ;

__attribute__((used)) static void mv643xx_eth_set_rx_mode(struct net_device *dev)
{
 mv643xx_eth_program_unicast_filter(dev);
 mv643xx_eth_program_multicast_filter(dev);
}
