
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORTS ;
 int PORT_PINS ;
 int crisv32_pinmux_init () ;
 int ** pins ;
 int printk (char*,int,...) ;

void
crisv32_pinmux_dump(void)
{
 int i, j;

 crisv32_pinmux_init();

 for (i = 0; i < PORTS; i++)
 {
  printk("Port %c\n", 'B'+i);
  for (j = 0; j < PORT_PINS; j++)
   printk("  Pin %d = %d\n", j, pins[i][j]);
 }
}
