
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {int erase_shift; } ;
typedef int loff_t ;


 int FLEXONENAND (struct onenand_chip*) ;
 int flexonenand_addr (struct onenand_chip*,int) ;

loff_t onenand_addr(struct onenand_chip *this, int block)
{
 if (!FLEXONENAND(this))
  return (loff_t)block << this->erase_shift;
 return flexonenand_addr(this, block);
}
