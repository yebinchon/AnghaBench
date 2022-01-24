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
struct slot {int dummy; } ;
struct controller {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct controller*) ; 
 scalar_t__ FUNC1 (struct controller*) ; 
 scalar_t__ FUNC2 (struct controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct controller*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct slot*) ; 
 scalar_t__ FUNC6 (struct slot*) ; 
 scalar_t__ FUNC7 (struct slot*,int) ; 

__attribute__((used)) static void FUNC8(struct controller *ctrl, struct slot * pslot)
{
	/* turn off slot, turn on Amber LED, turn off Green LED if supported*/
	if (FUNC1(ctrl)) {
		if (FUNC6(pslot)) {
			FUNC3(ctrl,
				 "Issue of Slot Power Off command failed\n");
			return;
		}
		/*
		 * After turning power off, we must wait for at least 1 second
		 * before taking any action that relies on power having been
		 * removed from the slot/adapter.
		 */
		FUNC4(1000);
	}

	if (FUNC2(ctrl))
		FUNC5(pslot);

	if (FUNC0(ctrl)) {
		if (FUNC7(pslot, 1)) {
			FUNC3(ctrl,
				 "Issue of Set Attention Led command failed\n");
			return;
		}
	}
}