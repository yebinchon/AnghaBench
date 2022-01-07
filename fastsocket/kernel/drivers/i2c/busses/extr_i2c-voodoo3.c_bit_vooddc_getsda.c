
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDC_SDA_IN ;
 scalar_t__ REG ;
 scalar_t__ ioaddr ;
 int readl (scalar_t__) ;

__attribute__((used)) static int bit_vooddc_getsda(void *data)
{
 return (0 != (readl(ioaddr + REG) & DDC_SDA_IN));
}
