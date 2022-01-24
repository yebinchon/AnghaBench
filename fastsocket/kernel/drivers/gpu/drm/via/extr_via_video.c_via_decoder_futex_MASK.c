#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_file {int dummy; } ;
struct drm_device {scalar_t__ dev_private; } ;
typedef  int /*<<< orphan*/  drm_via_sarea_t ;
struct TYPE_3__ {int /*<<< orphan*/ * decoder_queue; int /*<<< orphan*/ * sarea_priv; } ;
typedef  TYPE_1__ drm_via_private_t ;
struct TYPE_4__ {size_t lock; int func; int ms; int volatile val; } ;
typedef  TYPE_2__ drm_via_futex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DRM_HZ ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int EFAULT ; 
#define  VIA_FUTEX_WAIT 129 
#define  VIA_FUTEX_WAKE 128 
 size_t VIA_NR_XVMC_LOCKS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,size_t) ; 

int FUNC4(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_via_futex_t *fx = data;
	volatile int *lock;
	drm_via_private_t *dev_priv = (drm_via_private_t *) dev->dev_private;
	drm_via_sarea_t *sAPriv = dev_priv->sarea_priv;
	int ret = 0;

	FUNC0("\n");

	if (fx->lock >= VIA_NR_XVMC_LOCKS)
		return -EFAULT;

	lock = (volatile int *)FUNC3(sAPriv, fx->lock);

	switch (fx->func) {
	case VIA_FUTEX_WAIT:
		FUNC1(ret, dev_priv->decoder_queue[fx->lock],
			    (fx->ms / 10) * (DRM_HZ / 100), *lock != fx->val);
		return ret;
	case VIA_FUTEX_WAKE:
		FUNC2(&(dev_priv->decoder_queue[fx->lock]));
		return 0;
	}
	return 0;
}