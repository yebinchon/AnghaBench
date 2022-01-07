
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gem {scalar_t__ cell_enabled; int of_node; } ;


 int BUG_ON (int) ;
 int PMAC_FTR_GMAC_ENABLE ;
 int mb () ;
 int pmac_call_feature (int ,int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void gem_put_cell(struct gem *gp)
{
 BUG_ON(gp->cell_enabled <= 0);
 gp->cell_enabled--;







}
