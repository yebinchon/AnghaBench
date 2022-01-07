
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tx_queue_len; int flags; int type; } ;


 int ARPHRD_SLIP ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;

__attribute__((used)) void static ctcm_dev_setup(struct net_device *dev)
{
 dev->type = ARPHRD_SLIP;
 dev->tx_queue_len = 100;
 dev->flags = IFF_POINTOPOINT | IFF_NOARP;
}
