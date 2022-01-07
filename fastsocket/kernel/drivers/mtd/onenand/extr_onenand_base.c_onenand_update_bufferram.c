
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct onenand_chip {int page_shift; TYPE_1__* bufferram; } ;
struct mtd_info {struct onenand_chip* priv; } ;
typedef int loff_t ;
struct TYPE_2__ {int blockpage; } ;


 unsigned int ONENAND_CURRENT_BUFFERRAM (struct onenand_chip*) ;
 scalar_t__ ONENAND_IS_2PLANE (struct onenand_chip*) ;
 unsigned int ONENAND_NEXT_BUFFERRAM (struct onenand_chip*) ;
 int onenand_get_2x_blockpage (struct mtd_info*,int) ;

__attribute__((used)) static void onenand_update_bufferram(struct mtd_info *mtd, loff_t addr,
  int valid)
{
 struct onenand_chip *this = mtd->priv;
 int blockpage;
 unsigned int i;

 if (ONENAND_IS_2PLANE(this))
  blockpage = onenand_get_2x_blockpage(mtd, addr);
 else
  blockpage = (int) (addr >> this->page_shift);


 i = ONENAND_NEXT_BUFFERRAM(this);
 if (this->bufferram[i].blockpage == blockpage)
  this->bufferram[i].blockpage = -1;


 i = ONENAND_CURRENT_BUFFERRAM(this);
 if (valid)
  this->bufferram[i].blockpage = blockpage;
 else
  this->bufferram[i].blockpage = -1;
}
