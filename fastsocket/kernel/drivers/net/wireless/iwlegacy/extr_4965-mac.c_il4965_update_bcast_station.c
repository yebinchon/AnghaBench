
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_4__ {size_t bcast_id; } ;
struct il_priv {int sta_lock; TYPE_1__* stations; TYPE_2__ hw_params; } ;
struct il_link_quality_cmd {int dummy; } ;
struct TYPE_3__ {struct il_link_quality_cmd* lq; } ;


 int D_INFO (char*) ;
 int ENOMEM ;
 int IL_ERR (char*) ;
 struct il_link_quality_cmd* il4965_sta_alloc_lq (struct il_priv*,size_t) ;
 int kfree (struct il_link_quality_cmd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
il4965_update_bcast_station(struct il_priv *il)
{
 unsigned long flags;
 struct il_link_quality_cmd *link_cmd;
 u8 sta_id = il->hw_params.bcast_id;

 link_cmd = il4965_sta_alloc_lq(il, sta_id);
 if (!link_cmd) {
  IL_ERR("Unable to initialize rate scaling for bcast sta.\n");
  return -ENOMEM;
 }

 spin_lock_irqsave(&il->sta_lock, flags);
 if (il->stations[sta_id].lq)
  kfree(il->stations[sta_id].lq);
 else
  D_INFO("Bcast sta rate scaling has not been initialized.\n");
 il->stations[sta_id].lq = link_cmd;
 spin_unlock_irqrestore(&il->sta_lock, flags);

 return 0;
}
