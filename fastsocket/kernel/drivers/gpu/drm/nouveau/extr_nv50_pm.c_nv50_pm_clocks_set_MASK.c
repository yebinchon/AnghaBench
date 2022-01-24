#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ len; } ;
struct nv50_pm_state {TYPE_1__ eclk_hwsq; TYPE_1__ mclk_hwsq; int /*<<< orphan*/  mscript; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct bit_entry {int version; int length; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,char,struct bit_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_pm_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct nouveau_device* FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_device*,int,int,int) ; 
 int FUNC7 (struct drm_device*,TYPE_1__*) ; 

int
FUNC8(struct drm_device *dev, void *data)
{
	struct nouveau_device *device = FUNC4(dev);
	struct nv50_pm_state *info = data;
	struct bit_entry M;
	int ret = -EBUSY;

	/* halt and idle execution engines */
	FUNC5(device, 0x002504, 0x00000001, 0x00000001);
	if (!FUNC6(device, 0x002504, 0x00000010, 0x00000010))
		goto resume;
	if (!FUNC6(device, 0x00251c, 0x0000003f, 0x0000003f))
		goto resume;

	/* program memory clock, if necessary - must come before engine clock
	 * reprogramming due to how we construct the hwsq scripts in pre()
	 */
#define nouveau_bios_init_exec(a,b) nouveau_bios_run_init_table((a), (b), NULL, 0)
	if (info->mclk_hwsq.len) {
		/* execute some scripts that do ??? from the vbios.. */
		if (!FUNC1(dev, 'M', &M) && M.version == 1) {
			if (M.length >= 6)
				nouveau_bios_init_exec(dev, FUNC0(M.data[5]));
			if (M.length >= 8)
				nouveau_bios_init_exec(dev, FUNC0(M.data[7]));
			if (M.length >= 10)
				nouveau_bios_init_exec(dev, FUNC0(M.data[9]));
			nouveau_bios_init_exec(dev, info->mscript);
		}

		ret = FUNC7(dev, &info->mclk_hwsq);
		if (ret)
			goto resume;
	}

	/* program engine clocks */
	ret = FUNC7(dev, &info->eclk_hwsq);

resume:
	FUNC5(device, 0x002504, 0x00000001, 0x00000000);
	FUNC2(info);
	return ret;
}