#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ driver; scalar_t__ arg; } ;
struct call_struc {TYPE_3__* prev; struct call_struc* next; TYPE_2__ ics; int /*<<< orphan*/  info; int /*<<< orphan*/  divert_id; int /*<<< orphan*/  timer; } ;
struct TYPE_6__ {int num; } ;
struct TYPE_9__ {scalar_t__ driver; scalar_t__ arg; int command; TYPE_1__ parm; } ;
typedef  TYPE_4__ isdn_ctrl ;
struct TYPE_8__ {struct call_struc* next; } ;

/* Variables and functions */
#define  ISDN_STAT_CAUSE 130 
#define  ISDN_STAT_DHUP 129 
#define  ISDN_STAT_REDIR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct call_struc* divert_head ; 
 int /*<<< orphan*/  divert_lock ; 
 int /*<<< orphan*/  FUNC1 (struct call_struc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC6(isdn_ctrl *ic)
{ struct call_struc *cs, *cs1;
  unsigned long flags;
  int retval;

  retval = -1;
  cs = divert_head; /* start of list */
     while (cs)
      { if ((ic->driver == cs->ics.driver) && (ic->arg == cs->ics.arg))
         { switch (ic->command)
	    { case ISDN_STAT_DHUP:
                FUNC5(cs->info,"129 0x%lx\n",cs->divert_id);
                FUNC0(&cs->timer);
                cs->ics.driver = -1;
                break;

	      case ISDN_STAT_CAUSE:
                FUNC5(cs->info,"130 0x%lx %s\n",cs->divert_id,ic->parm.num);
                break;

	      case ISDN_STAT_REDIR:
                FUNC5(cs->info,"131 0x%lx\n",cs->divert_id);
                FUNC0(&cs->timer);
                cs->ics.driver = -1;
                break; 

	      default:
                FUNC5(cs->info,"999 0x%lx 0x%x\n",cs->divert_id,(int)(ic->command));
                break; 
            }
          FUNC2(cs->info);
          retval = 0; 
         }
        cs1 = cs; 
        cs = cs->next;
        if (cs1->ics.driver == -1)
          { 
            FUNC3(&divert_lock, flags);
            if (cs1->prev) 
              cs1->prev->next = cs1->next; /* forward link */
            else
              divert_head = cs1->next;
            if (cs1->next)
              cs1->next->prev = cs1->prev; /* back link */           
            FUNC4(&divert_lock, flags);
            FUNC1(cs1);
          } 
      }  
  return(retval); /* not found */
}