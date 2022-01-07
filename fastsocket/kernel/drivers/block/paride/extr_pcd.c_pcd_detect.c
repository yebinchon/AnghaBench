
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcd_unit {int present; scalar_t__ disk; int pi; int name; } ;


 size_t D_DLY ;
 size_t D_MOD ;
 size_t D_PRO ;
 size_t D_PRT ;
 size_t D_SLV ;
 size_t D_UNI ;
 int PCD_UNITS ;
 int PCD_VERSION ;
 int PI_PCD ;
 int*** drives ;
 int major ;
 int name ;
 int nice ;
 struct pcd_unit* pcd ;
 int pcd_buffer ;
 scalar_t__ pcd_drive_count ;
 int pcd_probe (struct pcd_unit*,int,char*) ;
 scalar_t__ pi_init (int ,int,int,int,int,int,int,int ,int ,int ,int ) ;
 int pi_release (int ) ;
 int printk (char*,int ,...) ;
 int put_disk (scalar_t__) ;
 int verbose ;

__attribute__((used)) static int pcd_detect(void)
{
 char id[18];
 int k, unit;
 struct pcd_unit *cd;

 printk("%s: %s version %s, major %d, nice %d\n",
        name, name, PCD_VERSION, major, nice);

 k = 0;
 if (pcd_drive_count == 0) {
  cd = pcd;
  if (pi_init(cd->pi, 1, -1, -1, -1, -1, -1, pcd_buffer,
       PI_PCD, verbose, cd->name)) {
   if (!pcd_probe(cd, -1, id) && cd->disk) {
    cd->present = 1;
    k++;
   } else
    pi_release(cd->pi);
  }
 } else {
  for (unit = 0, cd = pcd; unit < PCD_UNITS; unit++, cd++) {
   int *conf = *drives[unit];
   if (!conf[D_PRT])
    continue;
   if (!pi_init(cd->pi, 0, conf[D_PRT], conf[D_MOD],
         conf[D_UNI], conf[D_PRO], conf[D_DLY],
         pcd_buffer, PI_PCD, verbose, cd->name))
    continue;
   if (!pcd_probe(cd, conf[D_SLV], id) && cd->disk) {
    cd->present = 1;
    k++;
   } else
    pi_release(cd->pi);
  }
 }
 if (k)
  return 0;

 printk("%s: No CD-ROM drive found\n", name);
 for (unit = 0, cd = pcd; unit < PCD_UNITS; unit++, cd++)
  put_disk(cd->disk);
 return -1;
}
