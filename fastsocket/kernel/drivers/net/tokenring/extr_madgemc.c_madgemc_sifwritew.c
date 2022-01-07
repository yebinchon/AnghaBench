
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int SIFWRITEW (unsigned short,unsigned short) ;
 int madgemc_setregpage (struct net_device*,int) ;

__attribute__((used)) static void madgemc_sifwritew(struct net_device *dev, unsigned short val, unsigned short reg)
{
 if (reg<0x8)
  SIFWRITEW(val, reg);
 else {
  madgemc_setregpage(dev, 1);
  SIFWRITEW(val, reg);
  madgemc_setregpage(dev, 0);
 }
 return;
}
