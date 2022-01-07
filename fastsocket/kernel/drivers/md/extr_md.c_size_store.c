
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ dev_sectors; scalar_t__ pers; } ;
typedef int ssize_t ;
typedef scalar_t__ sector_t ;


 int ENOSPC ;
 int md_update_sb (struct mddev*,int) ;
 int strict_blocks_to_sectors (char const*,scalar_t__*) ;
 int update_size (struct mddev*,scalar_t__) ;

__attribute__((used)) static ssize_t
size_store(struct mddev *mddev, const char *buf, size_t len)
{




 sector_t sectors;
 int err = strict_blocks_to_sectors(buf, &sectors);

 if (err < 0)
  return err;
 if (mddev->pers) {
  err = update_size(mddev, sectors);
  md_update_sb(mddev, 1);
 } else {
  if (mddev->dev_sectors == 0 ||
      mddev->dev_sectors > sectors)
   mddev->dev_sectors = sectors;
  else
   err = -ENOSPC;
 }
 return err ? err : len;
}
