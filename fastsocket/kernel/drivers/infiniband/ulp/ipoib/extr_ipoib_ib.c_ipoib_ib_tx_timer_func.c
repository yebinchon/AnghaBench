
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int drain_tx_cq (struct net_device*) ;

__attribute__((used)) static void ipoib_ib_tx_timer_func(unsigned long ctx)
{
 drain_tx_cq((struct net_device *)ctx);
}
