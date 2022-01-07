
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int erasesize; int size; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NS_ERR (char*) ;
 int divide (int ,int ) ;
 int erase_block_wear ;
 int kzalloc (size_t,int ) ;
 int rptwear ;
 int wear_eb_count ;

__attribute__((used)) static int setup_wear_reporting(struct mtd_info *mtd)
{
 size_t mem;

 if (!rptwear)
  return 0;
 wear_eb_count = divide(mtd->size, mtd->erasesize);
 mem = wear_eb_count * sizeof(unsigned long);
 if (mem / sizeof(unsigned long) != wear_eb_count) {
  NS_ERR("Too many erase blocks for wear reporting\n");
  return -ENOMEM;
 }
 erase_block_wear = kzalloc(mem, GFP_KERNEL);
 if (!erase_block_wear) {
  NS_ERR("Too many erase blocks for wear reporting\n");
  return -ENOMEM;
 }
 return 0;
}
