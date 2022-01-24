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
struct TYPE_3__ {int /*<<< orphan*/ * decoder_queue; int /*<<< orphan*/  sarea_priv; } ;
typedef  TYPE_1__ drm_via_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int VIA_NR_XVMC_LOCKS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (int volatile) ; 
 int volatile _DRM_LOCK_CONT ; 
 scalar_t__ FUNC3 (int volatile) ; 

void FUNC4(drm_via_private_t *dev_priv, int context)
{
	unsigned int i;
	volatile int *lock;

	if (!dev_priv->sarea_priv)
		return;

	for (i = 0; i < VIA_NR_XVMC_LOCKS; ++i) {
		lock = (volatile int *)FUNC1(dev_priv->sarea_priv, i);
		if ((FUNC2(*lock) == context)) {
			if (FUNC3(*lock)
			    && (*lock & _DRM_LOCK_CONT)) {
				FUNC0(&(dev_priv->decoder_queue[i]));
			}
			*lock = 0;
		}
	}
}