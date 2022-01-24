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
typedef  int /*<<< orphan*/  u32 ;
struct drm_i915_private {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ECOBUS ; 
 int /*<<< orphan*/  FORCEWAKE_ACK_HSW ; 
 int /*<<< orphan*/  FORCEWAKE_ACK_TIMEOUT_MS ; 
 int /*<<< orphan*/  FORCEWAKE_KERNEL ; 
 int /*<<< orphan*/  FORCEWAKE_MT ; 
 int /*<<< orphan*/  FORCEWAKE_MT_ACK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct drm_i915_private *dev_priv)
{
	u32 forcewake_ack;

	if (FUNC3(dev_priv->dev))
		forcewake_ack = FORCEWAKE_ACK_HSW;
	else
		forcewake_ack = FORCEWAKE_MT_ACK;

	if (FUNC7((FUNC1(forcewake_ack) & 1) == 0,
			    FORCEWAKE_ACK_TIMEOUT_MS))
		FUNC0("Timed out waiting for forcewake old ack to clear.\n");

	FUNC2(FORCEWAKE_MT, FUNC5(FORCEWAKE_KERNEL));
	/* something from same cacheline, but !FORCEWAKE_MT */
	FUNC4(ECOBUS);

	if (FUNC7((FUNC1(forcewake_ack) & 1),
			    FORCEWAKE_ACK_TIMEOUT_MS))
		FUNC0("Timed out waiting for forcewake to ack request.\n");

	FUNC6(dev_priv);
}