
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* mtd; } ;
struct partition {int total_blocks; struct partition* blocks; struct partition* header_cache; int sector_map; int erases; TYPE_2__ mbd; } ;
struct mtd_blktrans_dev {int dummy; } ;
struct TYPE_3__ {int name; } ;


 int del_mtd_blktrans_dev (struct mtd_blktrans_dev*) ;
 int kfree (struct partition*) ;
 int pr_debug (char*,int ,int,int ) ;
 int vfree (int ) ;

__attribute__((used)) static void rfd_ftl_remove_dev(struct mtd_blktrans_dev *dev)
{
 struct partition *part = (struct partition*)dev;
 int i;

 for (i=0; i<part->total_blocks; i++) {
  pr_debug("rfd_ftl_remove_dev:'%s': erase unit #%02d: %d erases\n",
   part->mbd.mtd->name, i, part->blocks[i].erases);
 }

 del_mtd_blktrans_dev(dev);
 vfree(part->sector_map);
 kfree(part->header_cache);
 kfree(part->blocks);
 kfree(part);
}
