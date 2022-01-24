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
struct sh_cmt_priv {int width; int max_match_value; int match_value; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sh_cmt_priv*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_cmt_priv*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct sh_cmt_priv *p, char *name,
			   unsigned long clockevent_rating,
			   unsigned long clocksource_rating)
{
	if (p->width == (sizeof(p->max_match_value) * 8))
		p->max_match_value = ~0;
	else
		p->max_match_value = (1 << p->width) - 1;

	p->match_value = p->max_match_value;
	FUNC2(&p->lock);

	if (clockevent_rating)
		FUNC0(p, name, clockevent_rating);

	if (clocksource_rating)
		FUNC1(p, name, clocksource_rating);

	return 0;
}