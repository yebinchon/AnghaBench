
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio200_subdev_8254 {unsigned int* clock_src; int clk_sce_iobase; int which; int has_clk_gat_sce; } ;


 unsigned char CLK_SCE (int ,unsigned int,unsigned int) ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static int
dio200_set_clock_src(struct dio200_subdev_8254 *subpriv,
       unsigned int counter_number, unsigned int clock_src)
{
 unsigned char byte;

 if (!subpriv->has_clk_gat_sce)
  return -1;
 if (counter_number > 2)
  return -1;
 if (clock_src > 7)
  return -1;

 subpriv->clock_src[counter_number] = clock_src;
 byte = CLK_SCE(subpriv->which, counter_number, clock_src);
 outb(byte, subpriv->clk_sce_iobase);

 return 0;
}
