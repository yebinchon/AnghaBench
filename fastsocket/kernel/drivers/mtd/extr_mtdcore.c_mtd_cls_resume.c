
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int (* resume ) (struct mtd_info*) ;} ;
struct device {int dummy; } ;


 struct mtd_info* dev_to_mtd (struct device*) ;
 int stub1 (struct mtd_info*) ;

__attribute__((used)) static int mtd_cls_resume(struct device *dev)
{
 struct mtd_info *mtd = dev_to_mtd(dev);

 if (mtd && mtd->resume)
  mtd->resume(mtd);
 return 0;
}
