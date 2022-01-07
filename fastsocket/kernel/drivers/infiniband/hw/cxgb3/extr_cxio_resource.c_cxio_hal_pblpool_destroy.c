
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxio_rdev {int pbl_pool; } ;


 int gen_pool_destroy (int ) ;

void cxio_hal_pblpool_destroy(struct cxio_rdev *rdev_p)
{
 gen_pool_destroy(rdev_p->pbl_pool);
}
