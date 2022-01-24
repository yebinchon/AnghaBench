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
struct sh_cmt_priv {unsigned long total_cycles; int /*<<< orphan*/  lock; scalar_t__ match_value; } ;
struct clocksource {int dummy; } ;
typedef  unsigned long cycle_t ;

/* Variables and functions */
 struct sh_cmt_priv* FUNC0 (struct clocksource*) ; 
 unsigned long FUNC1 (struct sh_cmt_priv*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static cycle_t FUNC5(struct clocksource *cs)
{
	struct sh_cmt_priv *p = FUNC0(cs);
	unsigned long flags, raw;
	unsigned long value;
	int has_wrapped;

	FUNC2(&p->lock, flags);
	value = p->total_cycles;
	raw = FUNC1(p, &has_wrapped);

	if (FUNC4(has_wrapped))
		raw += p->match_value;
	FUNC3(&p->lock, flags);

	return value + raw;
}