
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_blktrans_dev {TYPE_1__* mtd; } ;
struct TYPE_2__ {scalar_t__ (* write ) (TYPE_1__*,unsigned long,int,size_t*,char*) ;} ;


 scalar_t__ stub1 (TYPE_1__*,unsigned long,int,size_t*,char*) ;

__attribute__((used)) static int mtdblock_writesect(struct mtd_blktrans_dev *dev,
         unsigned long block, char *buf)
{
 size_t retlen;

 if (dev->mtd->write(dev->mtd, (block * 512), 512, &retlen, buf))
  return 1;
 return 0;
}
