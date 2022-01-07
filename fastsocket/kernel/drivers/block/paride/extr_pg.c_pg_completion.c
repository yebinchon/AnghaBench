
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg {int pi; scalar_t__ dlen; int name; } ;


 int STAT_BUSY ;
 int STAT_DRQ ;
 int STAT_ERR ;
 int STAT_READY ;
 int pg_wait (struct pg*,int ,int,unsigned long,char*) ;
 int pi_disconnect (int ) ;
 int pi_read_block (int ,char*,int) ;
 int pi_write_block (int ,char*,int) ;
 int printk (char*,int ,char*,int) ;
 int read_reg (struct pg*,int) ;
 int verbose ;

__attribute__((used)) static int pg_completion(struct pg *dev, char *buf, unsigned long tmo)
{
 int r, d, n, p;

 r = pg_wait(dev, STAT_BUSY, STAT_DRQ | STAT_READY | STAT_ERR,
      tmo, "completion");

 dev->dlen = 0;

 while (read_reg(dev, 7) & STAT_DRQ) {
  d = (read_reg(dev, 4) + 256 * read_reg(dev, 5));
  n = ((d + 3) & 0xfffc);
  p = read_reg(dev, 2) & 3;
  if (p == 0)
   pi_write_block(dev->pi, buf, n);
  if (p == 2)
   pi_read_block(dev->pi, buf, n);
  if (verbose > 1)
   printk("%s: %s %d bytes\n", dev->name,
          p ? "Read" : "Write", n);
  dev->dlen += (1 - p) * d;
  buf += d;
  r = pg_wait(dev, STAT_BUSY, STAT_DRQ | STAT_READY | STAT_ERR,
       tmo, "completion");
 }

 pi_disconnect(dev->pi);

 return r;
}
