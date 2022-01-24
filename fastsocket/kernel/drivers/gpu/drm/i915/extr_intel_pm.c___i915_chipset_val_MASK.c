#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_4__ {unsigned long last_time1; unsigned long chipset_power; scalar_t__ last_count1; scalar_t__ c_m; scalar_t__ r_t; } ;
struct drm_i915_private {TYPE_1__ ips; } ;
struct TYPE_5__ {scalar_t__ i; scalar_t__ t; scalar_t__ m; scalar_t__ c; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  CSIEC ; 
 int /*<<< orphan*/  DDREC ; 
 int /*<<< orphan*/  DMIEC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* cparams ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  jiffies ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mchdev_lock ; 

__attribute__((used)) static unsigned long FUNC5(struct drm_i915_private *dev_priv)
{
	u64 total_count, diff, ret;
	u32 count1, count2, count3, m = 0, c = 0;
	unsigned long now = FUNC4(jiffies), diff1;
	int i;

	FUNC2(&mchdev_lock);

	diff1 = now - dev_priv->ips.last_time1;

	/* Prevent division-by-zero if we are asking too fast.
	 * Also, we don't get interesting results if we are polling
	 * faster than once in 10ms, so just return the saved value
	 * in such cases.
	 */
	if (diff1 <= 10)
		return dev_priv->ips.chipset_power;

	count1 = FUNC1(DMIEC);
	count2 = FUNC1(DDREC);
	count3 = FUNC1(CSIEC);

	total_count = count1 + count2 + count3;

	/* FIXME: handle per-counter overflow */
	if (total_count < dev_priv->ips.last_count1) {
		diff = ~0UL - dev_priv->ips.last_count1;
		diff += total_count;
	} else {
		diff = total_count - dev_priv->ips.last_count1;
	}

	for (i = 0; i < FUNC0(cparams); i++) {
		if (cparams[i].i == dev_priv->ips.c_m &&
		    cparams[i].t == dev_priv->ips.r_t) {
			m = cparams[i].m;
			c = cparams[i].c;
			break;
		}
	}

	diff = FUNC3(diff, diff1);
	ret = ((m * diff) + c);
	ret = FUNC3(ret, 10);

	dev_priv->ips.last_count1 = total_count;
	dev_priv->ips.last_time1 = now;

	dev_priv->ips.chipset_power = ret;

	return ret;
}