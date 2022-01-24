#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct b43_wldev {int dummy; } ;
struct b43_wl {int /*<<< orphan*/  mutex; TYPE_1__* qos_params; struct b43_wldev* current_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  p; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 scalar_t__ B43_STAT_INITIALIZED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ *,TYPE_1__) ; 
 TYPE_1__* b43_qos_shm_offsets ; 
 scalar_t__ FUNC5 (struct b43_wldev*) ; 
 struct b43_wl* FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct ieee80211_tx_queue_params const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct ieee80211_hw *hw,
			  struct ieee80211_vif *vif, u16 _queue,
			  const struct ieee80211_tx_queue_params *params)
{
	struct b43_wl *wl = FUNC6(hw);
	struct b43_wldev *dev;
	unsigned int queue = (unsigned int)_queue;
	int err = -ENODEV;

	if (queue >= FUNC0(wl->qos_params)) {
		/* Queue not available or don't support setting
		 * params on this queue. Return success to not
		 * confuse mac80211. */
		return 0;
	}
	FUNC1(FUNC0(b43_qos_shm_offsets) !=
		     FUNC0(wl->qos_params));

	FUNC8(&wl->mutex);
	dev = wl->current_dev;
	if (FUNC10(!dev || (FUNC5(dev) < B43_STAT_INITIALIZED)))
		goto out_unlock;

	FUNC7(&(wl->qos_params[queue].p), params, sizeof(*params));
	FUNC3(dev);
	FUNC4(dev, &(wl->qos_params[queue].p),
			      b43_qos_shm_offsets[queue]);
	FUNC2(dev);
	err = 0;

out_unlock:
	FUNC9(&wl->mutex);

	return err;
}