#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int flags; TYPE_3__* ring_rptr; } ;
typedef  TYPE_1__ drm_radeon_private_t ;
struct TYPE_5__ {scalar_t__ handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int,int) ; 
 int RADEON_IS_AGP ; 
 int FUNC1 (int) ; 

void FUNC2(drm_radeon_private_t *dev_priv, u32 off, u32 val)
{
	if (dev_priv->flags & RADEON_IS_AGP)
		FUNC0(dev_priv->ring_rptr, off, val);
	else
		*(((volatile u32 *) dev_priv->ring_rptr->handle) +
		  (off / sizeof(u32))) = FUNC1(val);
}