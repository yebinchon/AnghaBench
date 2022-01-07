
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_rdev {int pbl_pool; } ;


 int gen_pool_destroy (int ) ;

void c4iw_pblpool_destroy(struct c4iw_rdev *rdev)
{
 gen_pool_destroy(rdev->pbl_pool);
}
