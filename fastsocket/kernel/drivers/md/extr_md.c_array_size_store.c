
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {scalar_t__ array_sectors; int external_size; int gendisk; TYPE_1__* pers; } ;
typedef size_t ssize_t ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {scalar_t__ (* size ) (struct mddev*,int ,int ) ;} ;


 size_t E2BIG ;
 size_t EINVAL ;
 int revalidate_disk (int ) ;
 int set_capacity (int ,scalar_t__) ;
 scalar_t__ strict_blocks_to_sectors (char const*,scalar_t__*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 scalar_t__ stub1 (struct mddev*,int ,int ) ;
 scalar_t__ stub2 (struct mddev*,int ,int ) ;

__attribute__((used)) static ssize_t
array_size_store(struct mddev *mddev, const char *buf, size_t len)
{
 sector_t sectors;

 if (strncmp(buf, "default", 7) == 0) {
  if (mddev->pers)
   sectors = mddev->pers->size(mddev, 0, 0);
  else
   sectors = mddev->array_sectors;

  mddev->external_size = 0;
 } else {
  if (strict_blocks_to_sectors(buf, &sectors) < 0)
   return -EINVAL;
  if (mddev->pers && mddev->pers->size(mddev, 0, 0) < sectors)
   return -E2BIG;

  mddev->external_size = 1;
 }

 mddev->array_sectors = sectors;
 if (mddev->pers) {
  set_capacity(mddev->gendisk, mddev->array_sectors);
  revalidate_disk(mddev->gendisk);
 }
 return len;
}
