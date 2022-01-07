
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg {int pi; int name; } ;
typedef int got ;


 int DRIVE (struct pg*) ;
 int HZ ;
 int PG_RESET_TMO ;
 int STAT_BUSY ;
 scalar_t__ memcmp (int*,int*,int) ;
 int pg_sleep (int) ;
 int pi_connect (int ) ;
 int pi_disconnect (int ) ;
 int printk (char*,...) ;
 int read_reg (struct pg*,int) ;
 int status_reg (struct pg*) ;
 scalar_t__ verbose ;
 int write_reg (struct pg*,int,int) ;

__attribute__((used)) static int pg_reset(struct pg *dev)
{
 int i, k, err;
 int expect[5] = { 1, 1, 1, 0x14, 0xeb };
 int got[5];

 pi_connect(dev->pi);
 write_reg(dev, 6, DRIVE(dev));
 write_reg(dev, 7, 8);

 pg_sleep(20 * HZ / 1000);

 k = 0;
 while ((k++ < PG_RESET_TMO) && (status_reg(dev) & STAT_BUSY))
  pg_sleep(1);

 for (i = 0; i < 5; i++)
  got[i] = read_reg(dev, i + 1);

 err = memcmp(expect, got, sizeof(got)) ? -1 : 0;

 if (verbose) {
  printk("%s: Reset (%d) signature = ", dev->name, k);
  for (i = 0; i < 5; i++)
   printk("%3x", got[i]);
  if (err)
   printk(" (incorrect)");
  printk("\n");
 }

 pi_disconnect(dev->pi);
 return err;
}
