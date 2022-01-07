
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ioport_map (unsigned long,int) ;
 int ioread8 (int ) ;

u8 inb(unsigned long port)
{
 return ioread8(ioport_map(port, 1));
}
