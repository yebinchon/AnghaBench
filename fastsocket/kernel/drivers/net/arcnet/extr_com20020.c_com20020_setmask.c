
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct net_device {int base_addr; } ;


 int AINTMASK (int) ;
 int BUGMSG (int ,char*,int,int ) ;
 int D_DURING ;

__attribute__((used)) static void com20020_setmask(struct net_device *dev, int mask)
{
 u_int ioaddr = dev->base_addr;
 BUGMSG(D_DURING, "Setting mask to %x at %x\n",mask,ioaddr);
 AINTMASK(mask);
}
