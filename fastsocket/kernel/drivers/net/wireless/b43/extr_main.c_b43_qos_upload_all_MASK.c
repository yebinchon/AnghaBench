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
struct b43_wldev {int /*<<< orphan*/  qos_enabled; struct b43_wl* wl; } ;
struct b43_wl {struct b43_qos_params* qos_params; } ;
struct b43_qos_params {int /*<<< orphan*/  p; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct b43_qos_params*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ *,struct b43_qos_params) ; 
 struct b43_qos_params* b43_qos_shm_offsets ; 

__attribute__((used)) static void FUNC5(struct b43_wldev *dev)
{
	struct b43_wl *wl = dev->wl;
	struct b43_qos_params *params;
	unsigned int i;

	if (!dev->qos_enabled)
		return;

	FUNC1(FUNC0(b43_qos_shm_offsets) !=
		     FUNC0(wl->qos_params));

	FUNC3(dev);
	for (i = 0; i < FUNC0(wl->qos_params); i++) {
		params = &(wl->qos_params[i]);
		FUNC4(dev, &(params->p),
				      b43_qos_shm_offsets[i]);
	}
	FUNC2(dev);
}