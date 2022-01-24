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
typedef  int u32 ;
struct nouveau_subdev {int /*<<< orphan*/  (* intr ) (struct nouveau_subdev*) ;} ;
struct nouveau_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVDEV_SUBDEV_THERM ; 
 struct nouveau_bus* FUNC0 (struct nouveau_subdev*) ; 
 struct nouveau_subdev* FUNC1 (struct nouveau_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_bus*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_bus*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nouveau_bus*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_bus*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_subdev*) ; 

__attribute__((used)) static void
FUNC7(struct nouveau_subdev *subdev)
{
	struct nouveau_bus *pbus = FUNC0(subdev);
	u32 stat = FUNC4(pbus, 0x001100) & FUNC4(pbus, 0x001140);

	if (stat & 0x00000008) {
		u32 addr = FUNC4(pbus, 0x009084);
		u32 data = FUNC4(pbus, 0x009088);

		FUNC2(pbus, "MMIO %s of 0x%08x FAULT at 0x%06x\n",
			 (addr & 0x00000002) ? "write" : "read", data,
			 (addr & 0x00fffffc));

		stat &= ~0x00000008;
		FUNC5(pbus, 0x001100, 0x00000008);
	}

	if (stat & 0x00010000) {
		subdev = FUNC1(pbus, NVDEV_SUBDEV_THERM);
		if (subdev && subdev->intr)
			subdev->intr(subdev);
		stat &= ~0x00010000;
		FUNC5(pbus, 0x001100, 0x00010000);
	}

	if (stat) {
		FUNC2(pbus, "unknown intr 0x%08x\n", stat);
		FUNC3(pbus, 0x001140, stat, 0);
	}
}