
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ base_addr; } ;


 scalar_t__ BCMREG ;
 int BCMREG_IEN ;
 int CMDREG_RST ;
 scalar_t__ SONIC_CMDREG ;
 scalar_t__ SONIC_IMREG ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int outw (int ,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void StopSONIC(struct net_device *dev)
{


 outb(inb(dev->base_addr + BCMREG) & (~BCMREG_IEN), dev->base_addr + BCMREG);
 outb(0, dev->base_addr + SONIC_IMREG);



 outw(CMDREG_RST, dev->base_addr + SONIC_CMDREG);
 udelay(10);
 outw(CMDREG_RST, dev->base_addr + SONIC_CMDREG);
}
