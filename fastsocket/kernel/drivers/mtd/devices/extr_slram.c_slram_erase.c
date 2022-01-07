
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {scalar_t__ size; TYPE_1__* priv; } ;
struct erase_info {scalar_t__ addr; scalar_t__ len; int state; } ;
struct TYPE_2__ {scalar_t__ start; } ;
typedef TYPE_1__ slram_priv_t ;


 int EINVAL ;
 int MTD_ERASE_DONE ;
 int memset (scalar_t__,int,scalar_t__) ;
 int mtd_erase_callback (struct erase_info*) ;

__attribute__((used)) static int slram_erase(struct mtd_info *mtd, struct erase_info *instr)
{
 slram_priv_t *priv = mtd->priv;

 if (instr->addr + instr->len > mtd->size) {
  return(-EINVAL);
 }

 memset(priv->start + instr->addr, 0xff, instr->len);






 instr->state = MTD_ERASE_DONE;

 mtd_erase_callback(instr);

 return(0);
}
