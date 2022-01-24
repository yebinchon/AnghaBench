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
struct fc_exch_mgr_anchor {TYPE_1__* mp; int /*<<< orphan*/  ema_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  fc_exch_mgr_destroy ; 
 int /*<<< orphan*/  FUNC0 (struct fc_exch_mgr_anchor*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct fc_exch_mgr_anchor *ema)
{
	/* remove EM anchor from EM anchors list */
	FUNC2(&ema->ema_list);
	FUNC1(&ema->mp->kref, fc_exch_mgr_destroy);
	FUNC0(ema);
}