
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int max_stations; } ;
struct il_priv {int sta_lock; TYPE_1__* stations; TYPE_2__ hw_params; } ;
struct TYPE_3__ {int used; } ;


 int D_INFO (char*,...) ;
 int IL_STA_UCODE_ACTIVE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
il_clear_ucode_stations(struct il_priv *il)
{
 int i;
 unsigned long flags_spin;
 bool cleared = 0;

 D_INFO("Clearing ucode stations in driver\n");

 spin_lock_irqsave(&il->sta_lock, flags_spin);
 for (i = 0; i < il->hw_params.max_stations; i++) {
  if (il->stations[i].used & IL_STA_UCODE_ACTIVE) {
   D_INFO("Clearing ucode active for station %d\n", i);
   il->stations[i].used &= ~IL_STA_UCODE_ACTIVE;
   cleared = 1;
  }
 }
 spin_unlock_irqrestore(&il->sta_lock, flags_spin);

 if (!cleared)
  D_INFO("No active stations found to be cleared\n");
}
