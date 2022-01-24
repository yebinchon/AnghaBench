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
typedef  size_t uint ;
struct brcms_c_info {TYPE_1__* pub; int /*<<< orphan*/ * bandstate; int /*<<< orphan*/  band; } ;
struct TYPE_2__ {int /*<<< orphan*/  up; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_c_info*) ; 

__attribute__((used)) static void FUNC2(struct brcms_c_info *wlc,
					   uint bandunit)
{
	wlc->band = wlc->bandstate[bandunit];

	if (!wlc->pub->up)
		return;

	/* wait for at least one beacon before entering sleeping state */
	FUNC1(wlc);

	/* band-specific initializations */
	FUNC0(wlc);
}