
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {int dummy; } ;
struct mmc_blk_data {int queue; int disk; } ;


 int del_gendisk (int ) ;
 int mmc_blk_put (struct mmc_blk_data*) ;
 int mmc_cleanup_queue (int *) ;
 struct mmc_blk_data* mmc_get_drvdata (struct mmc_card*) ;
 int mmc_set_drvdata (struct mmc_card*,int *) ;

__attribute__((used)) static void mmc_blk_remove(struct mmc_card *card)
{
 struct mmc_blk_data *md = mmc_get_drvdata(card);

 if (md) {

  del_gendisk(md->disk);


  mmc_cleanup_queue(&md->queue);

  mmc_blk_put(md);
 }
 mmc_set_drvdata(card, ((void*)0));
}
