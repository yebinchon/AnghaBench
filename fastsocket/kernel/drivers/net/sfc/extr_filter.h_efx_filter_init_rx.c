
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_filter_spec {int priority; int flags; unsigned int dmaq_id; int type; } ;
typedef enum efx_filter_priority { ____Placeholder_efx_filter_priority } efx_filter_priority ;
typedef enum efx_filter_flags { ____Placeholder_efx_filter_flags } efx_filter_flags ;


 int EFX_FILTER_FLAG_RX ;
 int EFX_FILTER_UNSPEC ;

__attribute__((used)) static inline void efx_filter_init_rx(struct efx_filter_spec *spec,
          enum efx_filter_priority priority,
          enum efx_filter_flags flags,
          unsigned rxq_id)
{
 spec->type = EFX_FILTER_UNSPEC;
 spec->priority = priority;
 spec->flags = EFX_FILTER_FLAG_RX | flags;
 spec->dmaq_id = rxq_id;
}
