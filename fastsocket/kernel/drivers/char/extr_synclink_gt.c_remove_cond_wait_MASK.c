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
struct cond_wait {struct cond_wait* next; int /*<<< orphan*/  wait; int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct cond_wait **head, struct cond_wait *cw)
{
	struct cond_wait *w, *prev;
	FUNC0(&cw->q, &cw->wait);
	FUNC1(TASK_RUNNING);
	for (w = *head, prev = NULL ; w != NULL ; prev = w, w = w->next) {
		if (w == cw) {
			if (prev != NULL)
				prev->next = w->next;
			else
				*head = w->next;
			break;
		}
	}
}