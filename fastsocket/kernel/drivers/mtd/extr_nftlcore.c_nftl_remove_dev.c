
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_blktrans_dev {int devnum; } ;
struct NFTLrecord {struct NFTLrecord* EUNtable; struct NFTLrecord* ReplUnitTable; } ;


 int DEBUG (int ,char*,int ) ;
 int MTD_DEBUG_LEVEL1 ;
 int del_mtd_blktrans_dev (struct mtd_blktrans_dev*) ;
 int kfree (struct NFTLrecord*) ;

__attribute__((used)) static void nftl_remove_dev(struct mtd_blktrans_dev *dev)
{
 struct NFTLrecord *nftl = (void *)dev;

 DEBUG(MTD_DEBUG_LEVEL1, "NFTL: remove_dev (i=%d)\n", dev->devnum);

 del_mtd_blktrans_dev(dev);
 kfree(nftl->ReplUnitTable);
 kfree(nftl->EUNtable);
 kfree(nftl);
}
