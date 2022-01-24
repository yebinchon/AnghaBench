#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int space; } ;
typedef  TYPE_1__ drm_r128_ring_buffer_t ;
struct TYPE_6__ {int usec_timeout; TYPE_1__ ring; } ;
typedef  TYPE_2__ drm_r128_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

int FUNC3(drm_r128_private_t *dev_priv, int n)
{
	drm_r128_ring_buffer_t *ring = &dev_priv->ring;
	int i;

	for (i = 0; i < dev_priv->usec_timeout; i++) {
		FUNC2(dev_priv);
		if (ring->space >= n)
			return 0;
		FUNC1(1);
	}

	/* FIXME: This is being ignored... */
	FUNC0("failed!\n");
	return -EBUSY;
}