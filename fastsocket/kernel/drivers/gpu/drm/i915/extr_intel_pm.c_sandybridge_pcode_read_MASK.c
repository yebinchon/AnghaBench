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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  hw_lock; } ;
struct drm_i915_private {TYPE_1__ rps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int EAGAIN ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GEN6_PCODE_DATA ; 
 int /*<<< orphan*/  GEN6_PCODE_MAILBOX ; 
 int GEN6_PCODE_READY ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,int) ; 

int FUNC7(struct drm_i915_private *dev_priv, u8 mbox, u32 *val)
{
	FUNC4(!FUNC5(&dev_priv->rps.hw_lock));

	if (FUNC2(GEN6_PCODE_MAILBOX) & GEN6_PCODE_READY) {
		FUNC0("warning: pcode (read) mailbox access failed\n");
		return -EAGAIN;
	}

	FUNC3(GEN6_PCODE_DATA, *val);
	FUNC3(GEN6_PCODE_MAILBOX, GEN6_PCODE_READY | mbox);

	if (FUNC6((FUNC2(GEN6_PCODE_MAILBOX) & GEN6_PCODE_READY) == 0,
		     500)) {
		FUNC1("timeout waiting for pcode read (%d) to finish\n", mbox);
		return -ETIMEDOUT;
	}

	*val = FUNC2(GEN6_PCODE_DATA);
	FUNC3(GEN6_PCODE_DATA, 0);

	return 0;
}