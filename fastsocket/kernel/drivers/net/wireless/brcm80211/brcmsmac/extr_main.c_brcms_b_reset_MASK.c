#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct brcms_hardware {int /*<<< orphan*/  wlc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMS_USE_COREFLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct brcms_hardware *wlc_hw)
{
	/* reset the core */
	if (!FUNC2(wlc_hw->wlc))
		FUNC0(wlc_hw, BRCMS_USE_COREFLAGS);

	/* purge the dma rings */
	FUNC1(wlc_hw->wlc);
}