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
struct sh_cmt_priv {int /*<<< orphan*/  rate; scalar_t__ total_cycles; } ;
struct clocksource {int /*<<< orphan*/  shift; int /*<<< orphan*/  mult; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_CLOCKSOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sh_cmt_priv* FUNC1 (struct clocksource*) ; 
 int FUNC2 (struct sh_cmt_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct clocksource *cs)
{
	struct sh_cmt_priv *p = FUNC1(cs);
	int ret;

	p->total_cycles = 0;

	ret = FUNC2(p, FLAG_CLOCKSOURCE);
	if (ret)
		return ret;

	/* TODO: calculate good shift from rate and counter bit width */
	cs->shift = 0;
	cs->mult = FUNC0(p->rate, cs->shift);
	return 0;
}