#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ expires; } ;
struct TYPE_6__ {TYPE_3__ arcofitimer; } ;
struct TYPE_7__ {TYPE_1__ isac; } ;
struct IsdnCardState {TYPE_2__ dc; int /*<<< orphan*/  HW_Flags; } ;

/* Variables and functions */
 int ARCOFI_TIMER_VALUE ; 
 int /*<<< orphan*/  FLG_ARCOFI_TIMER ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct IsdnCardState *cs) {
	if (FUNC3(FLG_ARCOFI_TIMER, &cs->HW_Flags)) {
		FUNC1(&cs->dc.isac.arcofitimer);
	}	
	FUNC2(&cs->dc.isac.arcofitimer);
	cs->dc.isac.arcofitimer.expires = jiffies + ((ARCOFI_TIMER_VALUE * HZ)/1000);
	FUNC0(&cs->dc.isac.arcofitimer);
}