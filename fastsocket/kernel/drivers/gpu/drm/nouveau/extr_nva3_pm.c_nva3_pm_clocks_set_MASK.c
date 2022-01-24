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
struct TYPE_2__ {scalar_t__ pll; scalar_t__ clk; } ;
struct nva3_pm_state {TYPE_1__ mclk; int /*<<< orphan*/  vdec; int /*<<< orphan*/  unka0; int /*<<< orphan*/  sclk; int /*<<< orphan*/  nclk; } ;
struct nouveau_drm {int dummy; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct nva3_pm_state*) ; 
 struct nouveau_device* FUNC2 (struct drm_device*) ; 
 struct nouveau_drm* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_device*,int,int,int) ; 
 int FUNC5 (struct nouveau_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_device*,int /*<<< orphan*/ ,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct nouveau_device*,int,int) ; 
 int /*<<< orphan*/  nva3_pm_grcp_idle ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*,struct nva3_pm_state*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*,int,int,int /*<<< orphan*/ *) ; 

int
FUNC12(struct drm_device *dev, void *pre_state)
{
	struct nouveau_device *device = FUNC2(dev);
	struct nouveau_drm *drm = FUNC3(dev);
	struct nva3_pm_state *info = pre_state;
	int ret = -EAGAIN;

	/* prevent any new grctx switches from starting */
	FUNC8(device, 0x400324, 0x00000000);
	FUNC8(device, 0x400328, 0x0050001c); /* wait flag 0x1c */
	/* wait for any pending grctx switches to complete */
	if (!FUNC7(device, nva3_pm_grcp_idle, dev)) {
		FUNC0(drm, "pm: ctxprog didn't go idle\n");
		goto cleanup;
	}
	/* freeze PFIFO */
	FUNC4(device, 0x002504, 0x00000001, 0x00000001);
	if (!FUNC6(device, 0x002504, 0x00000010, 0x00000010)) {
		FUNC0(drm, "pm: fifo didn't go idle\n");
		goto cleanup;
	}

	FUNC11(dev, 0x00, 0x004200, &info->nclk);
	FUNC11(dev, 0x01, 0x004220, &info->sclk);
	FUNC9(dev, 0x20, &info->unka0);
	FUNC9(dev, 0x21, &info->vdec);

	if (info->mclk.clk || info->mclk.pll)
		FUNC10(dev, info);

	ret = 0;

cleanup:
	/* unfreeze PFIFO */
	FUNC4(device, 0x002504, 0x00000001, 0x00000000);
	/* restore ctxprog to normal */
	FUNC8(device, 0x400324, 0x00000000);
	FUNC8(device, 0x400328, 0x0070009c); /* set flag 0x1c */
	/* unblock it if necessary */
	if (FUNC5(device, 0x400308) == 0x0050001c)
		FUNC4(device, 0x400824, 0x10000000, 0x10000000);
	FUNC1(info);
	return ret;
}