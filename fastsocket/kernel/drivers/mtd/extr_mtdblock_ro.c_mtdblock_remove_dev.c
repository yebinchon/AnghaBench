
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_blktrans_dev {int dummy; } ;


 int del_mtd_blktrans_dev (struct mtd_blktrans_dev*) ;
 int kfree (struct mtd_blktrans_dev*) ;

__attribute__((used)) static void mtdblock_remove_dev(struct mtd_blktrans_dev *dev)
{
 del_mtd_blktrans_dev(dev);
 kfree(dev);
}
