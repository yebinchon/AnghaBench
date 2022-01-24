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
 int /*<<< orphan*/  FORCEWAKE_ACK_VLV ; 
 int /*<<< orphan*/  FORCEWAKE_KERNEL ; 
 int /*<<< orphan*/  FORCEWAKE_VLV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv)
{
	FUNC0(FORCEWAKE_VLV, FUNC2(FORCEWAKE_KERNEL));
	/* something from same cacheline, but !FORCEWAKE_VLV */
	FUNC1(FORCEWAKE_ACK_VLV);
	FUNC3(dev_priv);
}