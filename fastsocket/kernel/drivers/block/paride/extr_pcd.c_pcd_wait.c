
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcd_unit {int name; } ;


 int IDE_ERR ;
 int PCD_DELAY ;
 int PCD_SPIN ;
 int printk (char*,int ,char*,char*,int,int,int,int,int) ;
 int read_reg (struct pcd_unit*,int) ;
 int status_reg (struct pcd_unit*) ;
 int udelay (int ) ;

__attribute__((used)) static int pcd_wait(struct pcd_unit *cd, int go, int stop, char *fun, char *msg)
{
 int j, r, e, s, p;

 j = 0;
 while ((((r = status_reg(cd)) & go) || (stop && (!(r & stop))))
        && (j++ < PCD_SPIN))
  udelay(PCD_DELAY);

 if ((r & (IDE_ERR & stop)) || (j >= PCD_SPIN)) {
  s = read_reg(cd, 7);
  e = read_reg(cd, 1);
  p = read_reg(cd, 2);
  if (j >= PCD_SPIN)
   e |= 0x100;
  if (fun)
   printk("%s: %s %s: alt=0x%x stat=0x%x err=0x%x"
          " loop=%d phase=%d\n",
          cd->name, fun, msg, r, s, e, j, p);
  return (s << 8) + r;
 }
 return 0;
}
