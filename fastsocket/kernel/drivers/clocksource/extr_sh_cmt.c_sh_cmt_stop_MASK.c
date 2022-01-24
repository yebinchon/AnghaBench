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
struct sh_cmt_priv {unsigned long flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  max_match_value; } ;

/* Variables and functions */
 unsigned long FLAG_CLOCKEVENT ; 
 unsigned long FLAG_CLOCKSOURCE ; 
 int /*<<< orphan*/  FUNC0 (struct sh_cmt_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_cmt_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct sh_cmt_priv *p, unsigned long flag)
{
	unsigned long flags;
	unsigned long f;

	FUNC2(&p->lock, flags);

	f = p->flags & (FLAG_CLOCKEVENT | FLAG_CLOCKSOURCE);
	p->flags &= ~flag;

	if (f && !(p->flags & (FLAG_CLOCKEVENT | FLAG_CLOCKSOURCE)))
		FUNC0(p);

	/* adjust the timeout to maximum if only clocksource left */
	if ((flag == FLAG_CLOCKEVENT) && (p->flags & FLAG_CLOCKSOURCE))
		FUNC1(p, p->max_match_value);

	FUNC3(&p->lock, flags);
}