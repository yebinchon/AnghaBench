
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ DCR6 ;
 int outl (int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void update_cr6(u32 cr6_data, unsigned long ioaddr)
{
 u32 cr6_tmp;

 cr6_tmp = cr6_data & ~0x2002;
 outl(cr6_tmp, ioaddr + DCR6);
 udelay(5);
 outl(cr6_data, ioaddr + DCR6);
 udelay(5);
}
