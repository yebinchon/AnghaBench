
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mc13783 {int revision; int dev; } ;


 int ENODEV ;
 int MC13783_REG_REVISION ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int,int,int) ;
 int mc13783_read (struct mc13783*,int ,int*) ;

__attribute__((used)) static int mc13783_check_revision(struct mc13783 *mc13783)
{
 u32 rev_id, rev1, rev2, finid, icid;

 mc13783_read(mc13783, MC13783_REG_REVISION, &rev_id);

 rev1 = (rev_id & 0x018) >> 3;
 rev2 = (rev_id & 0x007);
 icid = (rev_id & 0x01C0) >> 6;
 finid = (rev_id & 0x01E00) >> 9;


 if ((rev1 == 0) && (rev2 == 2))
  rev1 = 3;

 if (rev1 == 0 || icid != 2) {
  dev_err(mc13783->dev, "No MC13783 detected.\n");
  return -ENODEV;
 }

 mc13783->revision = ((rev1 * 10) + rev2);
 dev_info(mc13783->dev, "MC13783 Rev %d.%d FinVer %x detected\n", rev1,
        rev2, finid);

 return 0;
}
