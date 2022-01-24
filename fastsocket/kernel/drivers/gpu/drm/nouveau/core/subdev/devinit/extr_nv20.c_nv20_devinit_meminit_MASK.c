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
typedef  int uint32_t ;
struct nv20_devinit_priv {int dummy; } ;
struct nouveau_devinit {int dummy; } ;
struct nouveau_device {int chipset; int /*<<< orphan*/  pdev; } ;
struct io_mapping {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV04_PFB_CFG0 ; 
 int /*<<< orphan*/  NV10_PFB_REFCTRL ; 
 int /*<<< orphan*/  NV10_PFB_REFCTRL_VALID_1 ; 
 int /*<<< orphan*/  FUNC0 (struct io_mapping*) ; 
 struct io_mapping* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct io_mapping*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct io_mapping*,int,int) ; 
 struct nouveau_device* FUNC4 (struct nv20_devinit_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct nv20_devinit_priv*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct nv20_devinit_priv*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (struct nv20_devinit_priv*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nv20_devinit_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct nouveau_devinit *devinit)
{
	struct nv20_devinit_priv *priv = (void *)devinit;
	struct nouveau_device *device = FUNC4(priv);
	uint32_t mask = (device->chipset >= 0x25 ? 0x300 : 0x900);
	uint32_t amount, off;
	struct io_mapping *fb;

	/* Map the framebuffer aperture */
	fb = FUNC1(FUNC4(priv)->pdev);
	if (!fb) {
		FUNC5(priv, "failed to map fb\n");
		return;
	}

	FUNC8(priv, NV10_PFB_REFCTRL, NV10_PFB_REFCTRL_VALID_1);

	/* Allow full addressing */
	FUNC6(priv, NV04_PFB_CFG0, 0, mask);

	amount = FUNC7(priv, 0x10020c);
	for (off = amount; off > 0x2000000; off -= 0x2000000)
		FUNC3(fb, off - 4, off);

	amount = FUNC7(priv, 0x10020c);
	if (amount != FUNC2(fb, amount - 4))
		/* IC missing - disable the upper half memory space. */
		FUNC6(priv, NV04_PFB_CFG0, mask, 0);

	FUNC0(fb);
}