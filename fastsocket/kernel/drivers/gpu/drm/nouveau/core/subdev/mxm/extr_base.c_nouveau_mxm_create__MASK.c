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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_mxm {int /*<<< orphan*/  action; } ;
struct nouveau_device {int /*<<< orphan*/  cfgopt; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MXM_SANITISE_DCB ; 
 scalar_t__ FUNC0 (struct nouveau_mxm*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_bios*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_mxm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct nouveau_mxm*) ; 
 struct nouveau_bios* FUNC4 (struct nouveau_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ ,char*,char*,int,void**) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_mxm*,char*) ; 
 struct nouveau_device* FUNC8 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC9 (struct nouveau_mxm*,char*,...) ; 
 int FUNC10 (struct nouveau_bios*,int /*<<< orphan*/ ) ; 

int
FUNC11(struct nouveau_object *parent,
		    struct nouveau_object *engine,
		    struct nouveau_oclass *oclass, int length, void **pobject)
{
	struct nouveau_device *device = FUNC8(parent);
	struct nouveau_bios *bios = FUNC4(device);
	struct nouveau_mxm *mxm;
	u8  ver, len;
	u16 data;
	int ret;

	ret = FUNC6(parent, engine, oclass, 0, "MXM", "mxm",
				     length, pobject);
	mxm = *pobject;
	if (ret)
		return ret;

	data = FUNC1(bios, &ver, &len);
	if (!data || !(ver = FUNC10(bios, data))) {
		FUNC7(mxm, "no VBIOS data, nothing to do\n");
		return 0;
	}

	FUNC9(mxm, "BIOS version %d.%d\n", ver >> 4, ver & 0x0f);

	if (FUNC0(mxm, ver)) {
		FUNC9(mxm, "failed to locate valid SIS\n");
#if 0
		/* we should, perhaps, fall back to some kind of limited
		 * mode here if the x86 vbios hasn't already done the
		 * work for us (so we prevent loading with completely
		 * whacked vbios tables).
		 */
		return -EINVAL;
#else
		return 0;
#endif
	}

	FUNC9(mxm, "MXMS Version %d.%d\n",
		FUNC3(mxm) >> 8, FUNC3(mxm) & 0xff);
	FUNC2(mxm, 0, NULL, NULL);

	if (FUNC5(device->cfgopt, "NvMXMDCB", true))
		mxm->action |= MXM_SANITISE_DCB;
	return 0;
}