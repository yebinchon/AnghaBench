
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {struct efx_mtd* priv; } ;
struct erase_info {int fail_addr; int state; int len; int addr; } ;
struct efx_mtd {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* erase ) (struct mtd_info*,int ,int ) ;} ;


 int MTD_ERASE_DONE ;
 int MTD_ERASE_FAILED ;
 int mtd_erase_callback (struct erase_info*) ;
 int stub1 (struct mtd_info*,int ,int ) ;

__attribute__((used)) static int efx_mtd_erase(struct mtd_info *mtd, struct erase_info *erase)
{
 struct efx_mtd *efx_mtd = mtd->priv;
 int rc;

 rc = efx_mtd->ops->erase(mtd, erase->addr, erase->len);
 if (rc == 0) {
  erase->state = MTD_ERASE_DONE;
 } else {
  erase->state = MTD_ERASE_FAILED;
  erase->fail_addr = 0xffffffff;
 }
 mtd_erase_callback(erase);
 return rc;
}
