
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_blktrans_dev {int devnum; } ;
struct INFTLrecord {struct INFTLrecord* VUtable; struct INFTLrecord* PUtable; } ;


 int DEBUG (int ,char*,int ) ;
 int MTD_DEBUG_LEVEL3 ;
 int del_mtd_blktrans_dev (struct mtd_blktrans_dev*) ;
 int kfree (struct INFTLrecord*) ;

__attribute__((used)) static void inftl_remove_dev(struct mtd_blktrans_dev *dev)
{
 struct INFTLrecord *inftl = (void *)dev;

 DEBUG(MTD_DEBUG_LEVEL3, "INFTL: remove_dev (i=%d)\n", dev->devnum);

 del_mtd_blktrans_dev(dev);

 kfree(inftl->PUtable);
 kfree(inftl->VUtable);
 kfree(inftl);
}
