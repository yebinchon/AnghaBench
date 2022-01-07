
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct deflect_struc {struct deflect_struc* next; TYPE_1__* prev; } ;
struct TYPE_2__ {struct deflect_struc* next; } ;


 int EINVAL ;
 int divert_lock ;
 int kfree (struct deflect_struc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct deflect_struc* table_head ;
 TYPE_1__* table_tail ;

int deleterule(int idx)
{ struct deflect_struc *ds,*ds1;
  unsigned long flags;

  if (idx < 0)
   { spin_lock_irqsave(&divert_lock, flags);
     ds = table_head;
     table_head = ((void*)0);
     table_tail = ((void*)0);
     spin_unlock_irqrestore(&divert_lock, flags);
     while (ds)
      { ds1 = ds;
        ds = ds->next;
        kfree(ds1);
      }
     return(0);
   }

  spin_lock_irqsave(&divert_lock, flags);
  ds = table_head;

  while ((ds) && (idx > 0))
   { idx--;
     ds = ds->next;
   }

  if (!ds)
   {
     spin_unlock_irqrestore(&divert_lock, flags);
     return(-EINVAL);
   }

  if (ds->next)
    ds->next->prev = ds->prev;
   else
     table_tail = ds->prev;

  if (ds->prev)
    ds->prev->next = ds->next;
   else
     table_head = ds->next;

  spin_unlock_irqrestore(&divert_lock, flags);
  kfree(ds);
  return(0);
}
