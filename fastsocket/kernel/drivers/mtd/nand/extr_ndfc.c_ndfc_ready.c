
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ndfc_controller {scalar_t__ ndfcbase; } ;
struct mtd_info {int dummy; } ;


 scalar_t__ NDFC_STAT ;
 int NDFC_STAT_IS_READY ;
 int in_be32 (scalar_t__) ;
 struct ndfc_controller ndfc_ctrl ;

__attribute__((used)) static int ndfc_ready(struct mtd_info *mtd)
{
 struct ndfc_controller *ndfc = &ndfc_ctrl;

 return in_be32(ndfc->ndfcbase + NDFC_STAT) & NDFC_STAT_IS_READY;
}
