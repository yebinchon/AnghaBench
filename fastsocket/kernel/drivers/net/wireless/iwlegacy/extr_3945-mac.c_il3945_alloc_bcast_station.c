
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct il_priv {int sta_lock; TYPE_1__* stations; } ;
struct TYPE_2__ {int used; } ;


 int EINVAL ;
 int IL_ERR (char*) ;
 size_t IL_INVALID_STATION ;
 int IL_STA_BCAST ;
 int IL_STA_DRIVER_ACTIVE ;
 int il_bcast_addr ;
 size_t il_prep_station (struct il_priv*,int ,int,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
il3945_alloc_bcast_station(struct il_priv *il)
{
 unsigned long flags;
 u8 sta_id;

 spin_lock_irqsave(&il->sta_lock, flags);
 sta_id = il_prep_station(il, il_bcast_addr, 0, ((void*)0));
 if (sta_id == IL_INVALID_STATION) {
  IL_ERR("Unable to prepare broadcast station\n");
  spin_unlock_irqrestore(&il->sta_lock, flags);

  return -EINVAL;
 }

 il->stations[sta_id].used |= IL_STA_DRIVER_ACTIVE;
 il->stations[sta_id].used |= IL_STA_BCAST;
 spin_unlock_irqrestore(&il->sta_lock, flags);

 return 0;
}
