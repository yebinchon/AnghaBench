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
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_2__ {int /*<<< orphan*/  rmt_timer0; int /*<<< orphan*/  timer0_exp; } ;
struct s_smc {TYPE_1__ r; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_RMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct s_smc *smc, u_long value, int event)
{
	smc->r.timer0_exp = FALSE ;		/* clear timer event flag */
	FUNC1(smc,&smc->r.rmt_timer0,value,FUNC0(EVENT_RMT,event));
}