
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ driver; scalar_t__ arg; } ;
struct call_struc {TYPE_3__* prev; struct call_struc* next; TYPE_2__ ics; int info; int divert_id; int timer; } ;
struct TYPE_6__ {int num; } ;
struct TYPE_9__ {scalar_t__ driver; scalar_t__ arg; int command; TYPE_1__ parm; } ;
typedef TYPE_4__ isdn_ctrl ;
struct TYPE_8__ {struct call_struc* next; } ;





 int del_timer (int *) ;
 struct call_struc* divert_head ;
 int divert_lock ;
 int kfree (struct call_struc*) ;
 int put_info_buffer (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprintf (int ,char*,int ,...) ;

__attribute__((used)) static int isdn_divert_stat_callback(isdn_ctrl *ic)
{ struct call_struc *cs, *cs1;
  unsigned long flags;
  int retval;

  retval = -1;
  cs = divert_head;
     while (cs)
      { if ((ic->driver == cs->ics.driver) && (ic->arg == cs->ics.arg))
         { switch (ic->command)
     { case 129:
                sprintf(cs->info,"129 0x%lx\n",cs->divert_id);
                del_timer(&cs->timer);
                cs->ics.driver = -1;
                break;

       case 130:
                sprintf(cs->info,"130 0x%lx %s\n",cs->divert_id,ic->parm.num);
                break;

       case 128:
                sprintf(cs->info,"131 0x%lx\n",cs->divert_id);
                del_timer(&cs->timer);
                cs->ics.driver = -1;
                break;

       default:
                sprintf(cs->info,"999 0x%lx 0x%x\n",cs->divert_id,(int)(ic->command));
                break;
            }
          put_info_buffer(cs->info);
          retval = 0;
         }
        cs1 = cs;
        cs = cs->next;
        if (cs1->ics.driver == -1)
          {
            spin_lock_irqsave(&divert_lock, flags);
            if (cs1->prev)
              cs1->prev->next = cs1->next;
            else
              divert_head = cs1->next;
            if (cs1->next)
              cs1->next->prev = cs1->prev;
            spin_unlock_irqrestore(&divert_lock, flags);
            kfree(cs1);
          }
      }
  return(retval);
}
