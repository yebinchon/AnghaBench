
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtdblk_dev {int dummy; } ;
struct mtd_blktrans_dev {size_t devnum; } ;


 int do_cached_read (struct mtdblk_dev*,unsigned long,int,char*) ;
 struct mtdblk_dev** mtdblks ;

__attribute__((used)) static int mtdblock_readsect(struct mtd_blktrans_dev *dev,
         unsigned long block, char *buf)
{
 struct mtdblk_dev *mtdblk = mtdblks[dev->devnum];
 return do_cached_read(mtdblk, block<<9, 512, buf);
}
