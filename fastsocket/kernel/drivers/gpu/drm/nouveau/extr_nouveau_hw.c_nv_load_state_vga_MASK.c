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
struct nv04_crtc_reg {int /*<<< orphan*/ * Attribute; int /*<<< orphan*/ * Graphics; int /*<<< orphan*/ * Sequencer; int /*<<< orphan*/  MiscOutReg; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NV_PRMVIO_MISC__WRITE ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int,struct nv04_crtc_reg*,int) ; 

__attribute__((used)) static void
FUNC7(struct drm_device *dev, int head,
		  struct nv04_mode_state *state)
{
	struct nv04_crtc_reg *regp = &state->crtc_reg[head];
	int i;

	FUNC1(dev, head, NV_PRMVIO_MISC__WRITE, regp->MiscOutReg);

	for (i = 0; i < 5; i++)
		FUNC4(dev, head, i, regp->Sequencer[i]);

	FUNC5(dev, head, false);
	for (i = 0; i < 25; i++)
		FUNC6(dev, head, regp, i);
	FUNC5(dev, head, true);

	for (i = 0; i < 9; i++)
		FUNC3(dev, head, i, regp->Graphics[i]);

	FUNC0(dev, head, true);
	for (i = 0; i < 21; i++)
		FUNC2(dev, head, i, regp->Attribute[i]);
	FUNC0(dev, head, false);
}