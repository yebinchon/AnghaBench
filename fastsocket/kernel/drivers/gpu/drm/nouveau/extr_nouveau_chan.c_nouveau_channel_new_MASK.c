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
typedef  int /*<<< orphan*/  u32 ;
struct nouveau_drm {int dummy; } ;
struct nouveau_cli {int dummy; } ;
struct nouveau_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_cli*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_cli*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_channel**) ; 
 int FUNC3 (struct nouveau_drm*,struct nouveau_cli*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nouveau_channel**) ; 
 int FUNC4 (struct nouveau_drm*,struct nouveau_cli*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nouveau_channel**) ; 
 int FUNC5 (struct nouveau_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(struct nouveau_drm *drm, struct nouveau_cli *cli,
		    u32 parent, u32 handle, u32 arg0, u32 arg1,
		    struct nouveau_channel **pchan)
{
	int ret;

	ret = FUNC4(drm, cli, parent, handle, arg0, pchan);
	if (ret) {
		FUNC0(cli, "ib channel create, %d\n", ret);
		ret = FUNC3(drm, cli, parent, handle, pchan);
		if (ret) {
			FUNC0(cli, "dma channel create, %d\n", ret);
			return ret;
		}
	}

	ret = FUNC5(*pchan, arg0, arg1);
	if (ret) {
		FUNC1(cli, "channel failed to initialise, %d\n", ret);
		FUNC2(pchan);
		return ret;
	}

	return 0;
}