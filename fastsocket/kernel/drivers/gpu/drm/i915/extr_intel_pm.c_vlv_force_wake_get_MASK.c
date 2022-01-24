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
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FORCEWAKE_ACK_TIMEOUT_MS ; 
 int /*<<< orphan*/  FORCEWAKE_ACK_VLV ; 
 int /*<<< orphan*/  FORCEWAKE_KERNEL ; 
 int /*<<< orphan*/  FORCEWAKE_VLV ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv)
{
	if (FUNC5((FUNC1(FORCEWAKE_ACK_VLV) & 1) == 0,
			    FORCEWAKE_ACK_TIMEOUT_MS))
		FUNC0("Timed out waiting for forcewake old ack to clear.\n");

	FUNC2(FORCEWAKE_VLV, FUNC3(FORCEWAKE_KERNEL));

	if (FUNC5((FUNC1(FORCEWAKE_ACK_VLV) & 1),
			    FORCEWAKE_ACK_TIMEOUT_MS))
		FUNC0("Timed out waiting for forcewake to ack request.\n");

	FUNC4(dev_priv);
}