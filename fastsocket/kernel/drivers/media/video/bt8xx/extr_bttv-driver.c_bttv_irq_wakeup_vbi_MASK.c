#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
struct TYPE_2__ {unsigned int state; int /*<<< orphan*/  done; int /*<<< orphan*/  field_count; struct timeval ts; } ;
struct bttv_buffer {TYPE_1__ vb; } ;
struct bttv {int /*<<< orphan*/  field_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct bttv *btv, struct bttv_buffer *wakeup,
		    unsigned int state)
{
	struct timeval ts;

	if (NULL == wakeup)
		return;

	FUNC0(&ts);
	wakeup->vb.ts = ts;
	wakeup->vb.field_count = btv->field_count;
	wakeup->vb.state = state;
	FUNC1(&wakeup->vb.done);
}