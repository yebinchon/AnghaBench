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
struct sh_cmt_priv {int flags; unsigned long next_match_value; } ;
struct clock_event_device {scalar_t__ mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CLOCK_EVT_MODE_ONESHOT ; 
 int FLAG_IRQCONTEXT ; 
 struct sh_cmt_priv* FUNC1 (struct clock_event_device*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_cmt_priv*,unsigned long) ; 

__attribute__((used)) static int FUNC4(unsigned long delta,
				   struct clock_event_device *ced)
{
	struct sh_cmt_priv *p = FUNC1(ced);

	FUNC0(ced->mode != CLOCK_EVT_MODE_ONESHOT);
	if (FUNC2(p->flags & FLAG_IRQCONTEXT))
		p->next_match_value = delta;
	else
		FUNC3(p, delta);

	return 0;
}