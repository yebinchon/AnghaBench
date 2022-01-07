
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg {int present; int pi; int name; } ;


 size_t D_DLY ;
 size_t D_MOD ;
 size_t D_PRO ;
 size_t D_PRT ;
 size_t D_UNI ;
 int PG_UNITS ;
 int PG_VERSION ;
 int PI_PG ;
 struct pg* devices ;
 int*** drives ;
 int major ;
 int name ;
 scalar_t__ pg_drive_count ;
 int pg_probe (struct pg*) ;
 int pg_scratch ;
 scalar_t__ pi_init (int ,int,int,int,int,int,int,int ,int ,int ,int ) ;
 int pi_release (int ) ;
 int printk (char*,int ,...) ;
 int verbose ;

__attribute__((used)) static int pg_detect(void)
{
 struct pg *dev = &devices[0];
 int k, unit;

 printk("%s: %s version %s, major %d\n", name, name, PG_VERSION, major);

 k = 0;
 if (pg_drive_count == 0) {
  if (pi_init(dev->pi, 1, -1, -1, -1, -1, -1, pg_scratch,
       PI_PG, verbose, dev->name)) {
   if (!pg_probe(dev)) {
    dev->present = 1;
    k++;
   } else
    pi_release(dev->pi);
  }

 } else
  for (unit = 0; unit < PG_UNITS; unit++, dev++) {
   int *parm = *drives[unit];
   if (!parm[D_PRT])
    continue;
   if (pi_init(dev->pi, 0, parm[D_PRT], parm[D_MOD],
        parm[D_UNI], parm[D_PRO], parm[D_DLY],
        pg_scratch, PI_PG, verbose, dev->name)) {
    if (!pg_probe(dev)) {
     dev->present = 1;
     k++;
    } else
     pi_release(dev->pi);
   }
  }

 if (k)
  return 0;

 printk("%s: No ATAPI device detected\n", name);
 return -1;
}
