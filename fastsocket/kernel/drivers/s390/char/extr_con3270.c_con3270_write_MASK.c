#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct console {int dummy; } ;
struct TYPE_4__ {scalar_t__ cols; int /*<<< orphan*/  lock; scalar_t__ dev; } ;
struct con3270 {TYPE_2__ view; int /*<<< orphan*/  timer; scalar_t__ nr_up; TYPE_1__* cline; } ;
struct TYPE_3__ {scalar_t__ len; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct con3270*) ; 
 int /*<<< orphan*/  FUNC1 (struct con3270*) ; 
 int /*<<< orphan*/  FUNC2 (struct con3270*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct con3270*,int) ; 
 struct con3270* condev ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct console *co, const char *str, unsigned int count)
{
	struct con3270 *cp;
	unsigned long flags;
	unsigned char c;

	cp = condev;
	FUNC4(&cp->view.lock, flags);
	while (count-- > 0) {
		c = *str++;
		if (cp->cline->len == 0)
			FUNC0(cp);
		if (c != '\n')
			FUNC2(cp, c);
		if (c == '\n' || cp->cline->len >= cp->view.cols)
			FUNC1(cp);
	}
	/* Setup timer to output current console buffer after 1/10 second */
	cp->nr_up = 0;
	if (cp->view.dev && !FUNC6(&cp->timer))
		FUNC3(cp, HZ/10);
	FUNC5(&cp->view.lock,flags);
}