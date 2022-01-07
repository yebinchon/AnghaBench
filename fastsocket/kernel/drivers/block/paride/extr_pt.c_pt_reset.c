
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_unit {int name; struct pi_adapter* pi; } ;
struct pi_adapter {int dummy; } ;


 int DRIVE (struct pt_unit*) ;
 int HZ ;
 int PT_RESET_TMO ;
 int STAT_BUSY ;
 int pi_connect (struct pi_adapter*) ;
 int pi_disconnect (struct pi_adapter*) ;
 int printk (char*,...) ;
 int pt_sleep (int) ;
 int read_reg (struct pi_adapter*,int) ;
 int status_reg (struct pi_adapter*) ;
 scalar_t__ verbose ;
 int write_reg (struct pi_adapter*,int,int) ;

__attribute__((used)) static int pt_reset(struct pt_unit *tape)
{
 struct pi_adapter *pi = tape->pi;
 int i, k, flg;
 int expect[5] = { 1, 1, 1, 0x14, 0xeb };

 pi_connect(pi);
 write_reg(pi, 6, DRIVE(tape));
 write_reg(pi, 7, 8);

 pt_sleep(20 * HZ / 1000);

 k = 0;
 while ((k++ < PT_RESET_TMO) && (status_reg(pi) & STAT_BUSY))
  pt_sleep(HZ / 10);

 flg = 1;
 for (i = 0; i < 5; i++)
  flg &= (read_reg(pi, i + 1) == expect[i]);

 if (verbose) {
  printk("%s: Reset (%d) signature = ", tape->name, k);
  for (i = 0; i < 5; i++)
   printk("%3x", read_reg(pi, i + 1));
  if (!flg)
   printk(" (incorrect)");
  printk("\n");
 }

 pi_disconnect(pi);
 return flg - 1;
}
