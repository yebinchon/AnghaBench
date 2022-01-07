
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT (int) ;
 scalar_t__ CPLD_CARDSTAT ;
 int ENXIO ;
 int __raw_readb (scalar_t__) ;
 scalar_t__ cpld ;

__attribute__((used)) static int cpld_mmc_get_cd(int module)
{
 if (!cpld)
  return -ENXIO;


 return !(__raw_readb(cpld + CPLD_CARDSTAT) & BIT(module ? 4 : 0));
}
