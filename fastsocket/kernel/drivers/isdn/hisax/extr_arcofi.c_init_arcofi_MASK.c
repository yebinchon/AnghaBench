#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {long data; void* function; } ;
struct TYPE_5__ {int /*<<< orphan*/  arcofi_wait; TYPE_3__ arcofitimer; } ;
struct TYPE_4__ {TYPE_2__ isac; } ;
struct IsdnCardState {int /*<<< orphan*/  HW_Flags; TYPE_1__ dc; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_ARCOFI ; 
 scalar_t__ arcofi_timer ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(struct IsdnCardState *cs) {
	cs->dc.isac.arcofitimer.function = (void *) arcofi_timer;
	cs->dc.isac.arcofitimer.data = (long) cs;
	FUNC0(&cs->dc.isac.arcofitimer);
	FUNC1(&cs->dc.isac.arcofi_wait);
	FUNC2(HW_ARCOFI, &cs->HW_Flags);
}