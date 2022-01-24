#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_radeon_master_private {TYPE_1__* sarea_priv; } ;
struct drm_master {struct drm_radeon_master_private* driver_priv; } ;
struct drm_device {TYPE_2__* dev_private; } ;
struct drm_buf {int pending; scalar_t__ used; TYPE_3__* dev_private; } ;
struct TYPE_5__ {int flags; } ;
typedef  TYPE_2__ drm_radeon_private_t ;
struct TYPE_6__ {scalar_t__ age; } ;
typedef  TYPE_3__ drm_radeon_buf_priv_t ;
struct TYPE_4__ {scalar_t__ last_dispatch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int CHIP_R600 ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int RADEON_FAMILY_MASK ; 
 int /*<<< orphan*/  RING_LOCALS ; 

void FUNC4(struct drm_device *dev, struct drm_master *master, struct drm_buf *buf)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	struct drm_radeon_master_private *master_priv = master->driver_priv;
	drm_radeon_buf_priv_t *buf_priv = buf->dev_private;
	RING_LOCALS;

	buf_priv->age = ++master_priv->sarea_priv->last_dispatch;

	/* Emit the vertex buffer age */
	if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600) {
		FUNC1(3);
		FUNC2(buf_priv->age);
		FUNC0();
	} else {
		FUNC1(2);
		FUNC3(buf_priv->age);
		FUNC0();
	}

	buf->pending = 1;
	buf->used = 0;
}