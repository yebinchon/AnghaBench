
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {scalar_t__ size; void* priv; } ;
typedef int resource_size_t ;
typedef scalar_t__ loff_t ;


 int EINVAL ;

__attribute__((used)) static int ram_point(struct mtd_info *mtd, loff_t from, size_t len,
  size_t *retlen, void **virt, resource_size_t *phys)
{
 if (from + len > mtd->size)
  return -EINVAL;


 if (phys)
  return -EINVAL;

 *virt = mtd->priv + from;
 *retlen = len;
 return 0;
}
