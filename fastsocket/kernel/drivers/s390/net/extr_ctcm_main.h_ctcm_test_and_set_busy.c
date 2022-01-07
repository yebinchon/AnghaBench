
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ ml_priv; } ;
struct ctcm_priv {int tbusy; } ;


 int netif_stop_queue (struct net_device*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static inline int ctcm_test_and_set_busy(struct net_device *dev)
{
 netif_stop_queue(dev);
 return test_and_set_bit(0,
   &(((struct ctcm_priv *)dev->ml_priv)->tbusy));
}
