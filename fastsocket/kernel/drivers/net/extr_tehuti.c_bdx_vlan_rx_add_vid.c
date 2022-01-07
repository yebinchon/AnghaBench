
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct net_device {int dummy; } ;


 int __bdx_vlan_rx_vid (struct net_device*,int ,int) ;

__attribute__((used)) static void bdx_vlan_rx_add_vid(struct net_device *ndev, uint16_t vid)
{
 __bdx_vlan_rx_vid(ndev, vid, 1);
}
