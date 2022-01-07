
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int (* suspend ) (struct mtd_info*) ;} ;
struct device {int dummy; } ;
typedef int pm_message_t ;


 struct mtd_info* dev_to_mtd (struct device*) ;
 int stub1 (struct mtd_info*) ;

__attribute__((used)) static int mtd_cls_suspend(struct device *dev, pm_message_t state)
{
 struct mtd_info *mtd = dev_to_mtd(dev);

 if (mtd && mtd->suspend)
  return mtd->suspend(mtd);
 else
  return 0;
}
