
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ type; } ;
typedef int __u32 ;


 scalar_t__ ARPHRD_IEEE802_TR ;
 int ip_eth_mc_map (int ,char*) ;
 int ip_tr_mc_map (int ,char*) ;

__attribute__((used)) static void qeth_l3_get_mac_for_ipm(__u32 ipm, char *mac,
    struct net_device *dev)
{
 if (dev->type == ARPHRD_IEEE802_TR)
  ip_tr_mc_map(ipm, mac);
 else
  ip_eth_mc_map(ipm, mac);
}
