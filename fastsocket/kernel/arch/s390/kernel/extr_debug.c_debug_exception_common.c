
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; int buf_size; int areas; } ;
typedef TYPE_1__ debug_info_t ;
typedef int debug_entry_t ;


 int DEBUG_DATA (int *) ;
 int debug_active ;
 scalar_t__ debug_critical ;
 int debug_finish_entry (TYPE_1__*,int *,int,int) ;
 int * get_active_entry (TYPE_1__*) ;
 int memcpy (int ,void const*,int ) ;
 int memset (int ,int ,int ) ;
 int min (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_trylock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

debug_entry_t
*debug_exception_common(debug_info_t * id, int level, const void *buf, int len)
{
 unsigned long flags;
 debug_entry_t *active;

 if (!debug_active || !id->areas)
  return ((void*)0);
 if (debug_critical) {
  if (!spin_trylock_irqsave(&id->lock, flags))
   return ((void*)0);
 } else
  spin_lock_irqsave(&id->lock, flags);
 active = get_active_entry(id);
 memset(DEBUG_DATA(active), 0, id->buf_size);
 memcpy(DEBUG_DATA(active), buf, min(len, id->buf_size));
 debug_finish_entry(id, active, level, 1);
 spin_unlock_irqrestore(&id->lock, flags);

 return active;
}
