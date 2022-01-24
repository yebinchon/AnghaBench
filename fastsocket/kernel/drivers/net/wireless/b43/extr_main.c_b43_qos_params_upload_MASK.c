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
typedef  int u16 ;
struct ieee80211_tx_queue_params {int cw_min; int txop; int cw_max; int aifs; } ;
struct b43_wldev {int /*<<< orphan*/  qos_enabled; } ;
typedef  int /*<<< orphan*/  params ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 int /*<<< orphan*/  B43_MMIO_RNG ; 
 int B43_NR_QOSPARAMS ; 
 size_t B43_QOSPARAM_AIFS ; 
 size_t B43_QOSPARAM_BSLOTS ; 
 size_t B43_QOSPARAM_CWCUR ; 
 size_t B43_QOSPARAM_CWMAX ; 
 size_t B43_QOSPARAM_CWMIN ; 
 size_t B43_QOSPARAM_REGGAP ; 
 unsigned int B43_QOSPARAM_STATUS ; 
 size_t B43_QOSPARAM_TXOP ; 
 int /*<<< orphan*/  B43_SHM_SHARED ; 
 int FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct b43_wldev *dev,
				  const struct ieee80211_tx_queue_params *p,
				  u16 shm_offset)
{
	u16 params[B43_NR_QOSPARAMS];
	int bslots, tmp;
	unsigned int i;

	if (!dev->qos_enabled)
		return;

	bslots = FUNC1(dev, B43_MMIO_RNG) & p->cw_min;

	FUNC4(&params, 0, sizeof(params));

	params[B43_QOSPARAM_TXOP] = p->txop * 32;
	params[B43_QOSPARAM_CWMIN] = p->cw_min;
	params[B43_QOSPARAM_CWMAX] = p->cw_max;
	params[B43_QOSPARAM_CWCUR] = p->cw_min;
	params[B43_QOSPARAM_AIFS] = p->aifs;
	params[B43_QOSPARAM_BSLOTS] = bslots;
	params[B43_QOSPARAM_REGGAP] = bslots + p->aifs;

	for (i = 0; i < FUNC0(params); i++) {
		if (i == B43_QOSPARAM_STATUS) {
			tmp = FUNC2(dev, B43_SHM_SHARED,
					     shm_offset + (i * 2));
			/* Mark the parameters as updated. */
			tmp |= 0x100;
			FUNC3(dev, B43_SHM_SHARED,
					shm_offset + (i * 2),
					tmp);
		} else {
			FUNC3(dev, B43_SHM_SHARED,
					shm_offset + (i * 2),
					params[i]);
		}
	}
}