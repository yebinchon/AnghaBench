
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {char* (* devnode ) (struct gendisk*,int *) ;} ;
struct device {int dummy; } ;
typedef int mode_t ;


 struct gendisk* dev_to_disk (struct device*) ;
 char* stub1 (struct gendisk*,int *) ;

__attribute__((used)) static char *block_devnode(struct device *dev, mode_t *mode)
{
 struct gendisk *disk = dev_to_disk(dev);

 if (disk->devnode)
  return disk->devnode(disk, mode);
 return ((void*)0);
}
