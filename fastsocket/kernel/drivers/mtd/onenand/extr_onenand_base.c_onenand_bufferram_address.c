
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {int density_mask; } ;


 int ONENAND_DDP_CHIP0 ;
 int ONENAND_DDP_CHIP1 ;

__attribute__((used)) static int onenand_bufferram_address(struct onenand_chip *this, int block)
{

 if (block & this->density_mask)
  return ONENAND_DDP_CHIP1;

 return ONENAND_DDP_CHIP0;
}
