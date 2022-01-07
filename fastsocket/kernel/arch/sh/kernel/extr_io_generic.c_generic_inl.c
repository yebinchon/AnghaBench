
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __ioport_map (unsigned long,int) ;
 int __raw_readl (int ) ;

u32 generic_inl(unsigned long port)
{
 return __raw_readl(__ioport_map(port, 4));
}
