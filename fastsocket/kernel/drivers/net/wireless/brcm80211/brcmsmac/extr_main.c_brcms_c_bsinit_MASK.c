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
struct brcms_c_info {int /*<<< orphan*/  asi; TYPE_3__* band; TYPE_2__* pub; TYPE_1__* hw; } ;
struct TYPE_6__ {int /*<<< orphan*/  bandunit; } ;
struct TYPE_5__ {int /*<<< orphan*/  unit; } ;
struct TYPE_4__ {int /*<<< orphan*/  d11core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct brcms_c_info *wlc)
{
	FUNC3(wlc->hw->d11core, "wl%d: bandunit %d\n",
		       wlc->pub->unit, wlc->band->bandunit);

	/* write ucode ACK/CTS rate table */
	FUNC1(wlc);

	/* update some band specific mac configuration */
	FUNC2(wlc);

	/* init antenna selection */
	FUNC0(wlc->asi);

}