
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; } ;


 int MCR (int ) ;
 int PTT_OFF ;
 int outb (int ,int ) ;

__attribute__((used)) static void ptt_off(struct net_device *dev)
{
 outb(PTT_OFF, MCR(dev->base_addr));
}
