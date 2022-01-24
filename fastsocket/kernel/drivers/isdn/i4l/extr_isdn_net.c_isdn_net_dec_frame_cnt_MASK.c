#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  tqueue; int /*<<< orphan*/  super_tx_queue; int /*<<< orphan*/  frame_cnt; } ;
typedef  TYPE_1__ isdn_net_local ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline__ void FUNC5(isdn_net_local *lp)
{
	FUNC0(&lp->frame_cnt);

	if (!(FUNC1(lp))) {
		if (!FUNC4(&lp->super_tx_queue)) {
			FUNC3(&lp->tqueue);
		} else {
			FUNC2(lp);
		}
       }                                                                      
}