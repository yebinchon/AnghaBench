
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool_features {int zero_new_blocks; int discard_enabled; int discard_passdown; int error_if_no_space; int mode; } ;


 int PM_WRITE ;

__attribute__((used)) static void pool_features_init(struct pool_features *pf)
{
 pf->mode = PM_WRITE;
 pf->zero_new_blocks = 1;
 pf->discard_enabled = 1;
 pf->discard_passdown = 1;
 pf->error_if_no_space = 0;
}
