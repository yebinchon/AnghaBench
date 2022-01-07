
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_dev; struct mtd_info* s_mtd; } ;
struct mtd_info {int index; } ;


 int MKDEV (int ,int ) ;
 int MTD_BLOCK_MAJOR ;

__attribute__((used)) static int get_sb_mtd_set(struct super_block *sb, void *_mtd)
{
 struct mtd_info *mtd = _mtd;

 sb->s_mtd = mtd;
 sb->s_dev = MKDEV(MTD_BLOCK_MAJOR, mtd->index);
 return 0;
}
