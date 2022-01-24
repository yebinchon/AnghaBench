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
typedef  int u8 ;
struct nouveau_pm_level {int volt_min; int volt_max; } ;
struct nouveau_drm {TYPE_2__* pm; } ;
struct drm_device {int dummy; } ;
struct bit_entry {int version; int length; int /*<<< orphan*/ * data; } ;
struct TYPE_3__ {int version; } ;
struct TYPE_4__ {TYPE_1__ voltage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,...) ; 
 void* FUNC1 (int) ; 
 int* FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct drm_device*,char,struct bit_entry*) ; 
 struct nouveau_drm* FUNC4 (struct drm_device*) ; 

__attribute__((used)) static void
FUNC5(struct drm_device *dev, struct nouveau_pm_level *perflvl)
{
	struct nouveau_drm *drm = FUNC4(dev);
	struct bit_entry P;
	u8 *vmap;
	int id;

	id = perflvl->volt_min;
	perflvl->volt_min = 0;

	/* boards using voltage table version <0x40 store the voltage
	 * level directly in the perflvl entry as a multiple of 10mV
	 */
	if (drm->pm->voltage.version < 0x40) {
		perflvl->volt_min = id * 10000;
		perflvl->volt_max = perflvl->volt_min;
		return;
	}

	/* on newer ones, the perflvl stores an index into yet another
	 * vbios table containing a min/max voltage value for the perflvl
	 */
	if (FUNC3(dev, 'P', &P) || P.version != 2 || P.length < 34) {
		FUNC0(drm, "where's our volt map table ptr? %d %d\n",
			 P.version, P.length);
		return;
	}

	vmap = FUNC2(dev, P.data[32]);
	if (!vmap) {
		FUNC0(drm, "volt map table pointer invalid\n");
		return;
	}

	if (id < vmap[3]) {
		vmap += vmap[1] + (vmap[2] * id);
		perflvl->volt_min = FUNC1(vmap[0]);
		perflvl->volt_max = FUNC1(vmap[4]);
	}
}