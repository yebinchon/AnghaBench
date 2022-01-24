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
typedef  int u16 ;
struct brcms_hardware {int /*<<< orphan*/  d11core; TYPE_1__* band; } ;
struct TYPE_2__ {int CWmax; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int OBJADDR_SCR_SEL ; 
 int S_DOT11_CWMAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  objaddr ; 
 int /*<<< orphan*/  objdata ; 

__attribute__((used)) static void FUNC3(struct brcms_hardware *wlc_hw, u16 newmax)
{
	wlc_hw->band->CWmax = newmax;

	FUNC2(wlc_hw->d11core, FUNC0(objaddr),
		     OBJADDR_SCR_SEL | S_DOT11_CWMAX);
	(void)FUNC1(wlc_hw->d11core, FUNC0(objaddr));
	FUNC2(wlc_hw->d11core, FUNC0(objdata), newmax);
}