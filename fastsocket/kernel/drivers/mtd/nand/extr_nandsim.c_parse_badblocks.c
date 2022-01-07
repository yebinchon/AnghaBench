
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int secsz; } ;
struct nandsim {TYPE_1__ geom; } ;
struct mtd_info {scalar_t__ (* block_markbad ) (struct mtd_info*,unsigned int) ;} ;
typedef unsigned int loff_t ;


 int EINVAL ;
 int NS_ERR (char*) ;
 char* badblocks ;
 unsigned int simple_strtoul (char*,char**,int ) ;
 scalar_t__ stub1 (struct mtd_info*,unsigned int) ;

__attribute__((used)) static int parse_badblocks(struct nandsim *ns, struct mtd_info *mtd)
{
 char *w;
 int zero_ok;
 unsigned int erase_block_no;
 loff_t offset;

 if (!badblocks)
  return 0;
 w = badblocks;
 do {
  zero_ok = (*w == '0' ? 1 : 0);
  erase_block_no = simple_strtoul(w, &w, 0);
  if (!zero_ok && !erase_block_no) {
   NS_ERR("invalid badblocks.\n");
   return -EINVAL;
  }
  offset = erase_block_no * ns->geom.secsz;
  if (mtd->block_markbad(mtd, offset)) {
   NS_ERR("invalid badblocks.\n");
   return -EINVAL;
  }
  if (*w == ',')
   w += 1;
 } while (*w);
 return 0;
}
