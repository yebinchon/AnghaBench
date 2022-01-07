
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {struct efx_mtd* priv; } ;
struct efx_mtd_partition {int name; } ;
struct efx_mtd {int name; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* sync ) (struct mtd_info*) ;} ;


 int pr_err (char*,int ,int ,int) ;
 int stub1 (struct mtd_info*) ;
 struct efx_mtd_partition* to_efx_mtd_partition (struct mtd_info*) ;

__attribute__((used)) static void efx_mtd_sync(struct mtd_info *mtd)
{
 struct efx_mtd_partition *part = to_efx_mtd_partition(mtd);
 struct efx_mtd *efx_mtd = mtd->priv;
 int rc;

 rc = efx_mtd->ops->sync(mtd);
 if (rc)
  pr_err("%s: %s sync failed (%d)\n",
         part->name, efx_mtd->name, rc);
}
