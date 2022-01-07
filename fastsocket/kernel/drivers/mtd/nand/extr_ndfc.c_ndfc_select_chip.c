
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ndfc_controller {scalar_t__ ndfcbase; scalar_t__ chip_select; } ;
struct mtd_info {int dummy; } ;


 scalar_t__ NDFC_CCR ;
 int NDFC_CCR_BS (scalar_t__) ;
 int NDFC_CCR_BS_MASK ;
 int NDFC_CCR_RESET_CE ;
 int in_be32 (scalar_t__) ;
 struct ndfc_controller ndfc_ctrl ;
 int out_be32 (scalar_t__,int ) ;

__attribute__((used)) static void ndfc_select_chip(struct mtd_info *mtd, int chip)
{
 uint32_t ccr;
 struct ndfc_controller *ndfc = &ndfc_ctrl;

 ccr = in_be32(ndfc->ndfcbase + NDFC_CCR);
 if (chip >= 0) {
  ccr &= ~NDFC_CCR_BS_MASK;
  ccr |= NDFC_CCR_BS(chip + ndfc->chip_select);
 } else
  ccr |= NDFC_CCR_RESET_CE;
 out_be32(ndfc->ndfcbase + NDFC_CCR, ccr);
}
