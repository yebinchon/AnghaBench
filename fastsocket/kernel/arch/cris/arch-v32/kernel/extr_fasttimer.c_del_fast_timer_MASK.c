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
struct fast_timer {int /*<<< orphan*/ * prev; int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int FUNC0 (struct fast_timer*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

int FUNC3(struct fast_timer * t)
{
  unsigned long flags;
  int ret;

  FUNC2(flags);
  ret = FUNC0(t);
  t->next = *(t->prev = NULL);
  FUNC1(flags);
  return ret;
}