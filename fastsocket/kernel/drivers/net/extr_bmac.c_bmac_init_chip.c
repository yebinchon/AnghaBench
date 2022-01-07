
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int bmac_init_phy (struct net_device*) ;
 int bmac_init_registers (struct net_device*) ;

__attribute__((used)) static void bmac_init_chip(struct net_device *dev)
{
 bmac_init_phy(dev);
 bmac_init_registers(dev);
}
