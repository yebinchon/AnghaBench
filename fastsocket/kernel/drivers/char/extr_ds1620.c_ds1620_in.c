
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ds1620_recv_bits (int) ;
 int ds1620_send_bits (int,int) ;
 int netwinder_ds1620_reset () ;
 int netwinder_ds1620_set_clk (int) ;
 int netwinder_ds1620_set_data_dir (int) ;
 int netwinder_lock (unsigned long*) ;
 int netwinder_unlock (unsigned long*) ;
 int udelay (int) ;

__attribute__((used)) static unsigned int ds1620_in(int cmd, int bits)
{
 unsigned long flags;
 unsigned int value;

 netwinder_lock(&flags);
 netwinder_ds1620_set_clk(1);
 netwinder_ds1620_set_data_dir(0);
 netwinder_ds1620_reset();

 udelay(1);

 ds1620_send_bits(8, cmd);

 netwinder_ds1620_set_data_dir(1);
 value = ds1620_recv_bits(bits);

 netwinder_ds1620_reset();
 netwinder_unlock(&flags);

 return value;
}
