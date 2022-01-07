
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;


 int ENXIO ;
 struct mapped_device* alloc_dev (int) ;
 int dm_sysfs_init (struct mapped_device*) ;

int dm_create(int minor, struct mapped_device **result)
{
 struct mapped_device *md;

 md = alloc_dev(minor);
 if (!md)
  return -ENXIO;

 dm_sysfs_init(md);

 *result = md;
 return 0;
}
