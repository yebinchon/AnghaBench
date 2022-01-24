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
typedef  scalar_t__ u8 ;
struct slot {struct controller* ctrl; } ;
struct controller {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct controller*) ; 
 scalar_t__ FUNC1 (struct controller*) ; 
 int FUNC2 (struct slot*) ; 
 int /*<<< orphan*/  FUNC3 (struct controller*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct slot*,scalar_t__*) ; 
 int FUNC5 (struct slot*,scalar_t__*) ; 
 int FUNC6 (struct slot*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (struct slot*) ; 
 int /*<<< orphan*/  FUNC8 (struct slot*) ; 

int FUNC9(struct slot *p_slot)
{
	u8 getstatus = 0;
	int rc;
	struct controller *ctrl = p_slot->ctrl;

	rc = FUNC4(p_slot, &getstatus);
	if (rc || !getstatus) {
		FUNC3(ctrl, "No adapter on slot(%s)\n", FUNC7(p_slot));
		return -ENODEV;
	}
	if (FUNC0(p_slot->ctrl)) {
		rc = FUNC5(p_slot, &getstatus);
		if (rc || getstatus) {
			FUNC3(ctrl, "Latch open on slot(%s)\n",
				  FUNC7(p_slot));
			return -ENODEV;
		}
	}

	if (FUNC1(p_slot->ctrl)) {
		rc = FUNC6(p_slot, &getstatus);
		if (rc || getstatus) {
			FUNC3(ctrl, "Already enabled on slot(%s)\n",
				  FUNC7(p_slot));
			return -EINVAL;
		}
	}

	FUNC5(p_slot, &getstatus);

	rc = FUNC2(p_slot);
	if (rc) {
		FUNC5(p_slot, &getstatus);
	}

	FUNC8(p_slot);

	return rc;
}