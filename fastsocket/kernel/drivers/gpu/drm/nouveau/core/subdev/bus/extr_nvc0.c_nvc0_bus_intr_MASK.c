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
struct nouveau_subdev {int dummy; } ;
struct nouveau_bus {int dummy; } ;

/* Variables and functions */
 struct nouveau_bus* FUNC0 (struct nouveau_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_bus*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_bus*,int,int,int) ; 
 int FUNC3 (struct nouveau_bus*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_bus*,int,int) ; 

__attribute__((used)) static void
FUNC5(struct nouveau_subdev *subdev)
{
	struct nouveau_bus *pbus = FUNC0(subdev);
	u32 stat = FUNC3(pbus, 0x001100) & FUNC3(pbus, 0x001140);

	if (stat & 0x0000000e) {
		u32 addr = FUNC3(pbus, 0x009084);
		u32 data = FUNC3(pbus, 0x009088);

		FUNC1(pbus, "MMIO %s of 0x%08x FAULT at 0x%06x [ %s%s%s]\n",
			 (addr & 0x00000002) ? "write" : "read", data,
			 (addr & 0x00fffffc),
			 (stat & 0x00000002) ? "!ENGINE " : "",
			 (stat & 0x00000004) ? "IBUS " : "",
			 (stat & 0x00000008) ? "TIMEOUT " : "");

		FUNC4(pbus, 0x009084, 0x00000000);
		FUNC4(pbus, 0x001100, (stat & 0x0000000e));
		stat &= ~0x0000000e;
	}

	if (stat) {
		FUNC1(pbus, "unknown intr 0x%08x\n", stat);
		FUNC2(pbus, 0x001140, stat, 0x00000000);
	}
}