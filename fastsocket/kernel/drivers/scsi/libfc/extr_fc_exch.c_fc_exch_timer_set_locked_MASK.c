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
struct fc_exch {int state; int /*<<< orphan*/  timeout_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_exch*,char*) ; 
 int FC_EX_DONE ; 
 int FC_EX_RST_CLEANUP ; 
 int /*<<< orphan*/  FUNC1 (struct fc_exch*) ; 
 int /*<<< orphan*/  fc_exch_workqueue ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct fc_exch *ep,
					    unsigned int timer_msec)
{
	if (ep->state & (FC_EX_RST_CLEANUP | FC_EX_DONE))
		return;

	FUNC0(ep, "Exchange timer armed\n");

	if (FUNC3(fc_exch_workqueue, &ep->timeout_work,
			       FUNC2(timer_msec)))
		FUNC1(ep);		/* hold for timer */
}