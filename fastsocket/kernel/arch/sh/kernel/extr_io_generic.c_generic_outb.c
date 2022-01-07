
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int __ioport_map (unsigned long,int) ;
 int __raw_writeb (int ,int ) ;

void generic_outb(u8 b, unsigned long port)
{
 __raw_writeb(b, __ioport_map(port, 1));
}
