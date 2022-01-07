
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deflect_struc {struct deflect_struc* prev; struct deflect_struc* next; int rule; } ;
typedef int divert_rule ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int divert_lock ;
 struct deflect_struc* kmalloc (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct deflect_struc* table_head ;
 struct deflect_struc* table_tail ;

int insertrule(int idx, divert_rule *newrule)
{ struct deflect_struc *ds,*ds1=((void*)0);
  unsigned long flags;

  if (!(ds = kmalloc(sizeof(struct deflect_struc),
                                              GFP_KERNEL)))
    return(-ENOMEM);

  ds->rule = *newrule;

  spin_lock_irqsave(&divert_lock, flags);

  if (idx >= 0)
   { ds1 = table_head;
     while ((ds1) && (idx > 0))
      { idx--;
        ds1 = ds1->next;
      }
     if (!ds1) idx = -1;
   }

  if (idx < 0)
   { ds->prev = table_tail;
     ds->next = ((void*)0);
     if (ds->prev)
       ds->prev->next = ds;
      else
        table_head = ds;
     table_tail = ds;
   }
  else
    { ds->next = ds1;
      ds->prev = ds1->prev;
      ds1->prev = ds;
      if (!ds->prev)
        table_head = ds;
   }

  spin_unlock_irqrestore(&divert_lock, flags);
  return(0);
}
