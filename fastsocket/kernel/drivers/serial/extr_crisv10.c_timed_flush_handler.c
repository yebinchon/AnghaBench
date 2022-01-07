
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e100_serial {scalar_t__ uses_dma_in; } ;


 scalar_t__ CONFIG_ETRAX_SERIAL_RX_TIMEOUT_TICKS ;
 int NR_PORTS ;
 int check_flush_timeout (struct e100_serial*) ;
 int flush_timer ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct e100_serial* rs_table ;

__attribute__((used)) static void
timed_flush_handler(unsigned long ptr)
{
 struct e100_serial *info;
 int i;





 for (i = 0; i < NR_PORTS; i++) {
  info = rs_table + i;
  if (info->uses_dma_in)
   check_flush_timeout(info);
 }


 mod_timer(&flush_timer, jiffies + CONFIG_ETRAX_SERIAL_RX_TIMEOUT_TICKS);
}
