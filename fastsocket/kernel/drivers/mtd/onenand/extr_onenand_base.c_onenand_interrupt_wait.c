
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {int complete; } ;
struct mtd_info {struct onenand_chip* priv; } ;


 int onenand_wait (struct mtd_info*,int) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int onenand_interrupt_wait(struct mtd_info *mtd, int state)
{
 struct onenand_chip *this = mtd->priv;

 wait_for_completion(&this->complete);

 return onenand_wait(mtd, state);
}
