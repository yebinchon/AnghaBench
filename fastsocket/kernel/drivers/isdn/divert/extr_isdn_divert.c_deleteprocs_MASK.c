#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct call_struc {struct call_struc* next; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct call_struc* divert_head ; 
 int /*<<< orphan*/  divert_lock ; 
 int /*<<< orphan*/  FUNC1 (struct call_struc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(void)
{ struct call_struc *cs, *cs1; 
  unsigned long flags;

  FUNC2(&divert_lock, flags);
  cs = divert_head;
  divert_head = NULL;
  while (cs)
   { FUNC0(&cs->timer);
     cs1 = cs;
     cs = cs->next;
     FUNC1(cs1);
   } 
  FUNC3(&divert_lock, flags);
}