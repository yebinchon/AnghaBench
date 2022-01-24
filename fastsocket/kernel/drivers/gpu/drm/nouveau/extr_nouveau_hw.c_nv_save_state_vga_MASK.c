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
struct nv04_mode_state {struct nv04_crtc_reg* crtc_reg; } ;
struct nv04_crtc_reg {int /*<<< orphan*/ * Sequencer; int /*<<< orphan*/ * Graphics; int /*<<< orphan*/ * Attribute; int /*<<< orphan*/  MiscOutReg; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  NV_PRMVIO_MISC__READ ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int,struct nv04_crtc_reg*,int) ; 

__attribute__((used)) static void
FUNC6(struct drm_device *dev, int head,
		  struct nv04_mode_state *state)
{
	struct nv04_crtc_reg *regp = &state->crtc_reg[head];
	int i;

	regp->MiscOutReg = FUNC0(dev, head, NV_PRMVIO_MISC__READ);

	for (i = 0; i < 25; i++)
		FUNC5(dev, head, regp, i);

	FUNC4(dev, head, true);
	for (i = 0; i < 21; i++)
		regp->Attribute[i] = FUNC1(dev, head, i);
	FUNC4(dev, head, false);

	for (i = 0; i < 9; i++)
		regp->Graphics[i] = FUNC2(dev, head, i);

	for (i = 0; i < 5; i++)
		regp->Sequencer[i] = FUNC3(dev, head, i);
}