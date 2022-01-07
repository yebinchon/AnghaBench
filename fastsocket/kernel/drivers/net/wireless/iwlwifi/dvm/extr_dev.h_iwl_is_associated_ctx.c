
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filter_flags; } ;
struct iwl_rxon_context {TYPE_1__ active; } ;


 int RXON_FILTER_ASSOC_MSK ;

__attribute__((used)) static inline int iwl_is_associated_ctx(struct iwl_rxon_context *ctx)
{
 return (ctx->active.filter_flags & RXON_FILTER_ASSOC_MSK) ? 1 : 0;
}
