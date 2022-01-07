
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_filter_spec {int flags; scalar_t__ type; int data; } ;


 int EFX_BUG_ON_PARANOID (int) ;
 int EFX_FILTER_FLAG_RX ;
 int EFX_FILTER_FLAG_TX ;
 scalar_t__ EFX_FILTER_UC_DEF ;
 scalar_t__ EFX_FILTER_UNSPEC ;
 int EINVAL ;
 int memset (int ,int ,int) ;

int efx_filter_set_uc_def(struct efx_filter_spec *spec)
{
 EFX_BUG_ON_PARANOID(!(spec->flags &
         (EFX_FILTER_FLAG_RX | EFX_FILTER_FLAG_TX)));

 if (spec->type != EFX_FILTER_UNSPEC)
  return -EINVAL;

 spec->type = EFX_FILTER_UC_DEF;
 memset(spec->data, 0, sizeof(spec->data));
 return 0;
}
