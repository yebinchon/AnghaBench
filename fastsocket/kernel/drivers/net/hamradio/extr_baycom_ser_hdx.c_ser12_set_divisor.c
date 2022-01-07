
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; } ;


 int DLL (int ) ;
 int DLM (int ) ;
 int LCR (int ) ;
 int THR (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static inline void ser12_set_divisor(struct net_device *dev,
         unsigned char divisor)
{
 outb(0x81, LCR(dev->base_addr));
 outb(divisor, DLL(dev->base_addr));
 outb(0, DLM(dev->base_addr));
 outb(0x01, LCR(dev->base_addr));





 outb(0x00, THR(dev->base_addr));






}
