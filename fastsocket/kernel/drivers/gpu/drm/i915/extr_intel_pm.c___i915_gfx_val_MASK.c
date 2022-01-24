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
typedef  int u32 ;
struct TYPE_4__ {unsigned long corr; unsigned long gfx_power; } ;
struct TYPE_3__ {int cur_delay; } ;
struct drm_i915_private {TYPE_2__ ips; TYPE_1__ rps; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ PXVFREQ_BASE ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  mchdev_lock ; 
 int FUNC4 (struct drm_i915_private*,int) ; 

__attribute__((used)) static unsigned long FUNC5(struct drm_i915_private *dev_priv)
{
	unsigned long t, corr, state1, corr2, state2;
	u32 pxvid, ext_v;

	FUNC2(&mchdev_lock);

	pxvid = FUNC0(PXVFREQ_BASE + (dev_priv->rps.cur_delay * 4));
	pxvid = (pxvid >> 24) & 0x7f;
	ext_v = FUNC4(dev_priv, pxvid);

	state1 = ext_v;

	t = FUNC3(dev_priv);

	/* Revel in the empirically derived constants */

	/* Correction factor in 1/100000 units */
	if (t > 80)
		corr = ((t * 2349) + 135940);
	else if (t >= 50)
		corr = ((t * 964) + 29317);
	else /* < 50 */
		corr = ((t * 301) + 1004);

	corr = corr * ((150142 * state1) / 10000 - 78642);
	corr /= 100000;
	corr2 = (corr * dev_priv->ips.corr);

	state2 = (corr2 * state1) / 10000;
	state2 /= 100; /* convert to mW */

	FUNC1(dev_priv);

	return dev_priv->ips.gfx_power + state2;
}