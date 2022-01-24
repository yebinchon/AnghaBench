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
struct TYPE_3__ {int arcofi_bc; int /*<<< orphan*/  arcofi_wait; } ;
struct TYPE_4__ {TYPE_1__ isac; } ;
struct IsdnCardState {TYPE_2__ dc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCOFI_COP_5 ; 
 int /*<<< orphan*/  ARCOFI_START ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct IsdnCardState *cs, int bc) {
	cs->dc.isac.arcofi_bc = bc;
	FUNC0(cs, ARCOFI_START, &ARCOFI_COP_5);
	FUNC1(&cs->dc.isac.arcofi_wait);
}