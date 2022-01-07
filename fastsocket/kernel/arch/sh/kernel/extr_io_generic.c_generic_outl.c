
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __ioport_map (unsigned long,int) ;
 int __raw_writel (int ,int ) ;

void generic_outl(u32 b, unsigned long port)
{
 __raw_writel(b, __ioport_map(port, 4));
}
