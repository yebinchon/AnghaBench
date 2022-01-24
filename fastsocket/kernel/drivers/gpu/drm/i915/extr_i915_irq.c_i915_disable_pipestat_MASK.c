#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int* pipestat; } ;
typedef  TYPE_1__ drm_i915_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void
FUNC3(drm_i915_private_t *dev_priv, int pipe, u32 mask)
{
	if ((dev_priv->pipestat[pipe] & mask) != 0) {
		u32 reg = FUNC1(pipe);

		dev_priv->pipestat[pipe] &= ~mask;
		FUNC0(reg, dev_priv->pipestat[pipe]);
		FUNC2(reg);
	}
}