
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int __ioport_map (unsigned long,int) ;
 int __raw_readw (int ) ;

u16 generic_inw(unsigned long port)
{
 return __raw_readw(__ioport_map(port, 2));
}
