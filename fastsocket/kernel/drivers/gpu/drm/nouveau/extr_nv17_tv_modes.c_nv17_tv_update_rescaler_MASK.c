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
struct nv17_tv_state {int ptv_208; int /*<<< orphan*/  vfilter; int /*<<< orphan*/  hfilter2; int /*<<< orphan*/  hfilter; } ;
struct nv17_tv_encoder {int /*<<< orphan*/  overscan; struct nv17_tv_state state; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV_PTV_HFILTER ; 
 int /*<<< orphan*/  NV_PTV_HFILTER2 ; 
 int /*<<< orphan*/  NV_PTV_VFILTER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct nv17_tv_state*,int) ; 
 struct nv17_tv_encoder* FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*) ; 

void FUNC5(struct drm_encoder *encoder)
{
	struct drm_device *dev = encoder->dev;
	struct nv17_tv_encoder *tv_enc = FUNC2(encoder);
	struct nv17_tv_state *regs = &tv_enc->state;

	regs->ptv_208 = 0x40 | (FUNC0(tv_enc->overscan) << 8);

	FUNC4(encoder);

	FUNC1(dev, regs, 208);
	FUNC3(dev, NV_PTV_HFILTER, regs->hfilter);
	FUNC3(dev, NV_PTV_HFILTER2, regs->hfilter2);
	FUNC3(dev, NV_PTV_VFILTER, regs->vfilter);
}