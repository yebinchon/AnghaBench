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
typedef  int /*<<< orphan*/  u16 ;
struct nvbios_init {int crtc; int execute; int /*<<< orphan*/ * outp; int /*<<< orphan*/  offset; struct nouveau_bios* bios; struct nouveau_subdev* subdev; } ;
struct nouveau_subdev {int dummy; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_bios*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_bios*) ; 
 struct nouveau_bios* FUNC2 (struct nouveau_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_bios*,char*) ; 
 int FUNC4 (struct nvbios_init*) ; 

int
FUNC5(struct nouveau_subdev *subdev, bool execute)
{
	struct nouveau_bios *bios = FUNC2(subdev);
	int ret = 0;
	int i = -1;
	u16 data;

	if (execute)
		FUNC3(bios, "running init tables\n");
	while (!ret && (data = (FUNC0(bios, ++i)))) {
		struct nvbios_init init = {
			.subdev = subdev,
			.bios = bios,
			.offset = data,
			.outp = NULL,
			.crtc = -1,
			.execute = execute ? 1 : 0,
		};

		ret = FUNC4(&init);
	}

	/* the vbios parser will run this right after the normal init
	 * tables, whereas the binary driver appears to run it later.
	 */
	if (!ret && (data = FUNC1(bios))) {
		struct nvbios_init init = {
			.subdev = subdev,
			.bios = bios,
			.offset = data,
			.outp = NULL,
			.crtc = -1,
			.execute = execute ? 1 : 0,
		};

		ret = FUNC4(&init);
	}

	return 0;
}