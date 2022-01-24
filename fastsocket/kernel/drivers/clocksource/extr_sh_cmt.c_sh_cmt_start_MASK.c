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
struct sh_cmt_priv {unsigned long flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  max_match_value; int /*<<< orphan*/  rate; } ;

/* Variables and functions */
 unsigned long FLAG_CLOCKEVENT ; 
 unsigned long FLAG_CLOCKSOURCE ; 
 int FUNC0 (struct sh_cmt_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_cmt_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct sh_cmt_priv *p, unsigned long flag)
{
	int ret = 0;
	unsigned long flags;

	FUNC2(&p->lock, flags);

	if (!(p->flags & (FLAG_CLOCKEVENT | FLAG_CLOCKSOURCE)))
		ret = FUNC0(p, &p->rate);

	if (ret)
		goto out;
	p->flags |= flag;

	/* setup timeout if no clockevent */
	if ((flag == FLAG_CLOCKSOURCE) && (!(p->flags & FLAG_CLOCKEVENT)))
		FUNC1(p, p->max_match_value);
 out:
	FUNC3(&p->lock, flags);

	return ret;
}