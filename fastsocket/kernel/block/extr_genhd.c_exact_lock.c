
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
typedef int dev_t ;


 int get_disk (struct gendisk*) ;

__attribute__((used)) static int exact_lock(dev_t devt, void *data)
{
 struct gendisk *p = data;

 if (!get_disk(p))
  return -1;
 return 0;
}
