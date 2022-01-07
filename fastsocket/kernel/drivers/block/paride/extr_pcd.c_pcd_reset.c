
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcd_unit {int drive; int pi; int name; } ;


 int HZ ;
 int IDE_BUSY ;
 int PCD_RESET_TMO ;
 int pcd_sleep (int) ;
 int pi_connect (int ) ;
 int pi_disconnect (int ) ;
 int printk (char*,...) ;
 int read_reg (struct pcd_unit*,int) ;
 int status_reg (struct pcd_unit*) ;
 scalar_t__ verbose ;
 int write_reg (struct pcd_unit*,int,int) ;

__attribute__((used)) static int pcd_reset(struct pcd_unit *cd)
{
 int i, k, flg;
 int expect[5] = { 1, 1, 1, 0x14, 0xeb };

 pi_connect(cd->pi);
 write_reg(cd, 6, 0xa0 + 0x10 * cd->drive);
 write_reg(cd, 7, 8);

 pcd_sleep(20 * HZ / 1000);

 k = 0;
 while ((k++ < PCD_RESET_TMO) && (status_reg(cd) & IDE_BUSY))
  pcd_sleep(HZ / 10);

 flg = 1;
 for (i = 0; i < 5; i++)
  flg &= (read_reg(cd, i + 1) == expect[i]);

 if (verbose) {
  printk("%s: Reset (%d) signature = ", cd->name, k);
  for (i = 0; i < 5; i++)
   printk("%3x", read_reg(cd, i + 1));
  if (!flg)
   printk(" (incorrect)");
  printk("\n");
 }

 pi_disconnect(cd->pi);
 return flg - 1;
}
