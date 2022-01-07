
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssfdcr_record {struct ssfdcr_record* logic_block_map; } ;
struct mtd_blktrans_dev {int devnum; } ;


 int DEBUG (int ,char*,int ) ;
 int MTD_DEBUG_LEVEL1 ;
 int del_mtd_blktrans_dev (struct mtd_blktrans_dev*) ;
 int kfree (struct ssfdcr_record*) ;

__attribute__((used)) static void ssfdcr_remove_dev(struct mtd_blktrans_dev *dev)
{
 struct ssfdcr_record *ssfdc = (struct ssfdcr_record *)dev;

 DEBUG(MTD_DEBUG_LEVEL1, "SSFDC_RO: remove_dev (i=%d)\n", dev->devnum);

 del_mtd_blktrans_dev(dev);
 kfree(ssfdc->logic_block_map);
 kfree(ssfdc);
}
