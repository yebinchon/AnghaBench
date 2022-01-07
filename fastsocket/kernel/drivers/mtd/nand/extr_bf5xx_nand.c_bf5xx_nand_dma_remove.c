
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bf5xx_nand_info {int dummy; } ;


 int CH_NFC ;
 int free_dma (int ) ;
 scalar_t__ hardware_ecc ;

__attribute__((used)) static void bf5xx_nand_dma_remove(struct bf5xx_nand_info *info)
{

 if (hardware_ecc)
  free_dma(CH_NFC);
}
