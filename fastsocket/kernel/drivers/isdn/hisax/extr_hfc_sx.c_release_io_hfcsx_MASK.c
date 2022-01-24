#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * extra; int /*<<< orphan*/  base; int /*<<< orphan*/  timer; scalar_t__ int_m2; } ;
struct TYPE_3__ {TYPE_2__ hfcsx; } ;
struct IsdnCardState {TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFCSX_CIRM ; 
 int /*<<< orphan*/  HFCSX_INT_M2 ; 
 scalar_t__ HFCSX_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct IsdnCardState *cs)
{
	cs->hw.hfcsx.int_m2 = 0;	/* interrupt output off ! */
	FUNC0(cs, HFCSX_INT_M2, cs->hw.hfcsx.int_m2);
	FUNC0(cs, HFCSX_CIRM, HFCSX_RESET);	/* Reset On */
	FUNC3(30);				/* Timeout 30ms */
	FUNC0(cs, HFCSX_CIRM, 0);	/* Reset Off */
	FUNC1(&cs->hw.hfcsx.timer);
	FUNC4(cs->hw.hfcsx.base, 2); /* release IO-Block */
	FUNC2(cs->hw.hfcsx.extra);
	cs->hw.hfcsx.extra = NULL;
}