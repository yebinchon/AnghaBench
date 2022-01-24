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
typedef  int u32 ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int TRANS_CHICKEN2_TIMING_OVERRIDE ; 
 int TRANS_ENABLE ; 
 int TRANS_STATE_ENABLE ; 
 int /*<<< orphan*/  _TRANSACONF ; 
 int /*<<< orphan*/  _TRANSA_CHICKEN2 ; 
 scalar_t__ FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv)
{
	u32 val;

	val = FUNC1(_TRANSACONF);
	val &= ~TRANS_ENABLE;
	FUNC2(_TRANSACONF, val);
	/* wait for PCH transcoder off, transcoder state */
	if (FUNC3((FUNC1(_TRANSACONF) & TRANS_STATE_ENABLE) == 0, 50))
		FUNC0("Failed to disable PCH transcoder\n");

	/* Workaround: clear timing override bit. */
	val = FUNC1(_TRANSA_CHICKEN2);
	val &= ~TRANS_CHICKEN2_TIMING_OVERRIDE;
	FUNC2(_TRANSA_CHICKEN2, val);
}