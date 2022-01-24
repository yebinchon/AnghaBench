#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nv17_tv_state {int ptv_200; } ;
struct nv17_tv_norm_params {scalar_t__ kind; } ;
struct nouveau_gpio {int /*<<< orphan*/  (* set ) (struct nouveau_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ;} ;
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct TYPE_6__ {int last_dpms; TYPE_1__* dcb; } ;
struct TYPE_5__ {struct nv17_tv_state state; } ;
struct TYPE_4__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 scalar_t__ CTV_ENC_MODE ; 
 int /*<<< orphan*/  DCB_GPIO_TVDAC0 ; 
 int /*<<< orphan*/  DCB_GPIO_TVDAC1 ; 
 int DRM_MODE_DPMS_OFF ; 
 int DRM_MODE_DPMS_ON ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int,int /*<<< orphan*/ ) ; 
 struct nv17_tv_norm_params* FUNC1 (struct drm_encoder*) ; 
 struct nouveau_drm* FUNC2 (struct drm_device*) ; 
 TYPE_3__* FUNC3 (struct drm_encoder*) ; 
 struct nouveau_gpio* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,struct nv17_tv_state*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nouveau_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nouveau_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__* FUNC10 (struct drm_encoder*) ; 

__attribute__((used)) static void  FUNC11(struct drm_encoder *encoder, int mode)
{
	struct drm_device *dev = encoder->dev;
	struct nouveau_drm *drm = FUNC2(dev);
	struct nouveau_gpio *gpio = FUNC4(drm->device);
	struct nv17_tv_state *regs = &FUNC10(encoder)->state;
	struct nv17_tv_norm_params *tv_norm = FUNC1(encoder);

	if (FUNC3(encoder)->last_dpms == mode)
		return;
	FUNC3(encoder)->last_dpms = mode;

	FUNC0(drm, "Setting dpms mode %d on TV encoder (output %d)\n",
		 mode, FUNC3(encoder)->dcb->index);

	regs->ptv_200 &= ~1;

	if (tv_norm->kind == CTV_ENC_MODE) {
		FUNC6(encoder, mode);

	} else {
		FUNC6(encoder, DRM_MODE_DPMS_OFF);

		if (mode == DRM_MODE_DPMS_ON)
			regs->ptv_200 |= 1;
	}

	FUNC7(dev, regs, 200);

	gpio->set(gpio, 0, DCB_GPIO_TVDAC1, 0xff, mode == DRM_MODE_DPMS_ON);
	gpio->set(gpio, 0, DCB_GPIO_TVDAC0, 0xff, mode == DRM_MODE_DPMS_ON);

	FUNC5(encoder, mode == DRM_MODE_DPMS_ON);
}