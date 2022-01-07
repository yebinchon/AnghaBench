
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int out_le32 (int ,int) ;
 int printk (char*) ;
 int reset_reg ;
 int smp_send_stop () ;
 int udelay (int) ;

__attribute__((used)) static void pas_restart(char *cmd)
{

 smp_send_stop();
 udelay(10000);
 printk("Restarting...\n");
 while (1)
  out_le32(reset_reg, 0x6000000);
}
