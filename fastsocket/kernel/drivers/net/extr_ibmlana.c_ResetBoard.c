
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ base_addr; } ;


 scalar_t__ BCMREG ;
 unsigned char BCMREG_RAMEN ;
 unsigned char BCMREG_RAMWIN ;
 unsigned char BCMREG_RESET ;
 unsigned char inb (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void ResetBoard(struct net_device *dev)
{
 unsigned char bcmval;



 bcmval = inb(dev->base_addr + BCMREG);



 bcmval |= BCMREG_RESET;
 outb(bcmval, dev->base_addr + BCMREG);
 udelay(10);
 bcmval &= ~BCMREG_RESET;
 outb(bcmval, dev->base_addr + BCMREG);



 bcmval |= BCMREG_RAMEN | BCMREG_RAMWIN;
 outb(bcmval, dev->base_addr + BCMREG);
}
