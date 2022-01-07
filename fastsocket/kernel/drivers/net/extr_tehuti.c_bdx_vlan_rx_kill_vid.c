
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __bdx_vlan_rx_vid (struct net_device*,unsigned short,int ) ;

__attribute__((used)) static void bdx_vlan_rx_kill_vid(struct net_device *ndev, unsigned short vid)
{
 __bdx_vlan_rx_vid(ndev, vid, 0);
}
