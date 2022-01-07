
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ netwinder_ds1620_get_data () ;
 int netwinder_ds1620_set_clk (int) ;
 int netwinder_ds1620_set_data (int ) ;
 int udelay (int) ;

__attribute__((used)) static unsigned int ds1620_recv_bits(int nr)
{
 unsigned int value = 0, mask = 1;
 int i;

 netwinder_ds1620_set_data(0);

 for (i = 0; i < nr; i++) {
  netwinder_ds1620_set_clk(0);
  udelay(1);

  if (netwinder_ds1620_get_data())
   value |= mask;

  mask <<= 1;

  netwinder_ds1620_set_clk(1);
  udelay(1);
 }

 return value;
}
