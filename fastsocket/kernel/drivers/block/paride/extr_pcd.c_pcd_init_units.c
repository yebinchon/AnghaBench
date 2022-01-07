
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int capacity; scalar_t__ mask; scalar_t__ speed; struct pcd_unit* handle; int * ops; int * name; } ;
struct pcd_unit {int changed; int * name; TYPE_1__ info; scalar_t__ drive; scalar_t__ last_sense; scalar_t__ present; int pia; int * pi; struct gendisk* disk; } ;
struct gendisk {int first_minor; int * fops; int disk_name; int major; } ;


 size_t D_PRT ;
 size_t D_SLV ;
 int PCD_UNITS ;
 struct gendisk* alloc_disk (int) ;
 scalar_t__*** drives ;
 int major ;
 char* name ;
 struct pcd_unit* pcd ;
 int pcd_bdops ;
 int pcd_dops ;
 scalar_t__ pcd_drive_count ;
 int snprintf (int *,int,char*,char*,int) ;
 int strcpy (int ,int *) ;

__attribute__((used)) static void pcd_init_units(void)
{
 struct pcd_unit *cd;
 int unit;

 pcd_drive_count = 0;
 for (unit = 0, cd = pcd; unit < PCD_UNITS; unit++, cd++) {
  struct gendisk *disk = alloc_disk(1);
  if (!disk)
   continue;
  cd->disk = disk;
  cd->pi = &cd->pia;
  cd->present = 0;
  cd->last_sense = 0;
  cd->changed = 1;
  cd->drive = (*drives[unit])[D_SLV];
  if ((*drives[unit])[D_PRT])
   pcd_drive_count++;

  cd->name = &cd->info.name[0];
  snprintf(cd->name, sizeof(cd->info.name), "%s%d", name, unit);
  cd->info.ops = &pcd_dops;
  cd->info.handle = cd;
  cd->info.speed = 0;
  cd->info.capacity = 1;
  cd->info.mask = 0;
  disk->major = major;
  disk->first_minor = unit;
  strcpy(disk->disk_name, cd->name);
  disk->fops = &pcd_bdops;
 }
}
