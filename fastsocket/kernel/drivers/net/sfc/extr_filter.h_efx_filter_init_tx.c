
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_filter_spec {unsigned int dmaq_id; int flags; int priority; int type; } ;


 int EFX_FILTER_FLAG_TX ;
 int EFX_FILTER_PRI_REQUIRED ;
 int EFX_FILTER_UNSPEC ;

__attribute__((used)) static inline void efx_filter_init_tx(struct efx_filter_spec *spec,
          unsigned txq_id)
{
 spec->type = EFX_FILTER_UNSPEC;
 spec->priority = EFX_FILTER_PRI_REQUIRED;
 spec->flags = EFX_FILTER_FLAG_TX;
 spec->dmaq_id = txq_id;
}
