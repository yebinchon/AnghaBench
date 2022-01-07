
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {scalar_t__ size; } ;
typedef scalar_t__ loff_t ;


 int EINVAL ;
 int FL_READING ;
 int onenand_block_isbad_nolock (struct mtd_info*,scalar_t__,int ) ;
 int onenand_get_device (struct mtd_info*,int ) ;
 int onenand_release_device (struct mtd_info*) ;

__attribute__((used)) static int onenand_block_isbad(struct mtd_info *mtd, loff_t ofs)
{
 int ret;


 if (ofs > mtd->size)
  return -EINVAL;

 onenand_get_device(mtd, FL_READING);
 ret = onenand_block_isbad_nolock(mtd, ofs, 0);
 onenand_release_device(mtd);
 return ret;
}
