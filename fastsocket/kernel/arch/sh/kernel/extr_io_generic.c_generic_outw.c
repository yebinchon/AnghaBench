
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int __ioport_map (unsigned long,int) ;
 int __raw_writew (int ,int ) ;

void generic_outw(u16 b, unsigned long port)
{
 __raw_writew(b, __ioport_map(port, 2));
}
