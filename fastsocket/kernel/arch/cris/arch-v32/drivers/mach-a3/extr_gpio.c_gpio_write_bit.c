
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char readl (unsigned long*) ;
 int writel (unsigned long,unsigned long*) ;

__attribute__((used)) static void gpio_write_bit(unsigned long *port, unsigned char data, int bit,
 unsigned char clk_mask, unsigned char data_mask)
{
 unsigned long shadow = readl(port) & ~clk_mask;
 writel(shadow, port);
 if (data & 1 << bit)
  shadow |= data_mask;
 else
  shadow &= ~data_mask;
 writel(shadow, port);

 shadow |= clk_mask;
 writel(shadow, port);
}
