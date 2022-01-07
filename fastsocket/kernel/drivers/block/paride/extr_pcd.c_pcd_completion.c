
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcd_unit {int pi; int name; } ;


 int IDE_BUSY ;
 int IDE_DRQ ;
 int IDE_ERR ;
 int IDE_READY ;
 int PCD_TMO ;
 int mdelay (int) ;
 scalar_t__ pcd_wait (struct pcd_unit*,int ,int,char*,char*) ;
 int pi_disconnect (int ) ;
 int pi_read_block (int ,char*,int) ;
 int printk (char*,int ,...) ;
 int printk_once (char*,int ) ;
 int read_reg (struct pcd_unit*,int) ;
 int verbose ;

__attribute__((used)) static int pcd_completion(struct pcd_unit *cd, char *buf, char *fun)
{
 int r, d, p, n, k, j;

 r = -1;
 k = 0;
 j = 0;

 if (!pcd_wait(cd, IDE_BUSY, IDE_DRQ | IDE_READY | IDE_ERR,
        fun, "completion")) {
  r = 0;
  while (read_reg(cd, 7) & IDE_DRQ) {
   d = read_reg(cd, 4) + 256 * read_reg(cd, 5);
   n = (d + 3) & 0xfffc;
   p = read_reg(cd, 2) & 3;

   if ((p == 2) && (n > 0) && (j == 0)) {
    pi_read_block(cd->pi, buf, n);
    if (verbose > 1)
     printk("%s: %s: Read %d bytes\n",
            cd->name, fun, n);
    r = 0;
    j++;
   } else {
    if (verbose > 1)
     printk
         ("%s: %s: Unexpected phase %d, d=%d, k=%d\n",
          cd->name, fun, p, d, k);
    if (verbose < 2)
     printk_once(
         "%s: WARNING: ATAPI phase errors\n",
         cd->name);
    mdelay(1);
   }
   if (k++ > PCD_TMO) {
    printk("%s: Stuck DRQ\n", cd->name);
    break;
   }
   if (pcd_wait
       (cd, IDE_BUSY, IDE_DRQ | IDE_READY | IDE_ERR, fun,
        "completion")) {
    r = -1;
    break;
   }
  }
 }

 pi_disconnect(cd->pi);

 return r;
}
