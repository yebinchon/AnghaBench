
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rx_chain; } ;
struct TYPE_5__ {scalar_t__ rx_chain; } ;
struct il_priv {TYPE_3__ staging; TYPE_2__ active; TYPE_1__* ops; } ;
struct TYPE_4__ {int (* set_rxon_chain ) (struct il_priv*) ;} ;


 int il_commit_rxon (struct il_priv*) ;
 int stub1 (struct il_priv*) ;

void
il4965_update_chain_flags(struct il_priv *il)
{
 if (il->ops->set_rxon_chain) {
  il->ops->set_rxon_chain(il);
  if (il->active.rx_chain != il->staging.rx_chain)
   il_commit_rxon(il);
 }
}
