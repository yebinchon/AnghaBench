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
struct brcms_timer {void (* fn ) (void*) ;scalar_t__ name; struct brcms_timer* next; void* arg; struct brcms_info* wl; int /*<<< orphan*/  dly_wrk; } ;
struct brcms_info {struct brcms_timer* timers; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _brcms_timer ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct brcms_timer* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

struct brcms_timer *FUNC5(struct brcms_info *wl,
				     void (*fn) (void *arg),
				     void *arg, const char *name)
{
	struct brcms_timer *t;

	t = FUNC2(sizeof(struct brcms_timer), GFP_ATOMIC);
	if (!t)
		return NULL;

	FUNC0(&t->dly_wrk, _brcms_timer);
	t->wl = wl;
	t->fn = fn;
	t->arg = arg;
	t->next = wl->timers;
	wl->timers = t;

#ifdef DEBUG
	t->name = kmalloc(strlen(name) + 1, GFP_ATOMIC);
	if (t->name)
		strcpy(t->name, name);
#endif

	return t;
}