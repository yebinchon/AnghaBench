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
typedef  int uint32_t ;
struct nv10_devinit_priv {int dummy; } ;
struct nouveau_devinit {int dummy; } ;
struct io_mapping {int dummy; } ;
struct TYPE_2__ {int chipset; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV04_PFB_CFG0 ; 
 int /*<<< orphan*/  NV10_PFB_REFCTRL ; 
 int /*<<< orphan*/  NV10_PFB_REFCTRL_VALID_1 ; 
 int /*<<< orphan*/  FUNC0 (struct io_mapping*) ; 
 struct io_mapping* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct io_mapping*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct io_mapping*,int,int) ; 
 TYPE_1__* FUNC4 (struct nv10_devinit_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct nv10_devinit_priv*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct nv10_devinit_priv*,int /*<<< orphan*/ ,int,int const) ; 
 int FUNC7 (struct nv10_devinit_priv*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nv10_devinit_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct nouveau_devinit *devinit)
{
	struct nv10_devinit_priv *priv = (void *)devinit;
	const int mem_width[] = { 0x10, 0x00, 0x20 };
	const int mem_width_count = FUNC4(priv)->chipset >= 0x17 ? 3 : 2;
	uint32_t patt = 0xdeadbeef;
	struct io_mapping *fb;
	int i, j, k;

	/* Map the framebuffer aperture */
	fb = FUNC1(FUNC4(priv)->pdev);
	if (!fb) {
		FUNC5(priv, "failed to map fb\n");
		return;
	}

	FUNC8(priv, NV10_PFB_REFCTRL, NV10_PFB_REFCTRL_VALID_1);

	/* Probe memory bus width */
	for (i = 0; i < mem_width_count; i++) {
		FUNC6(priv, NV04_PFB_CFG0, 0x30, mem_width[i]);

		for (j = 0; j < 4; j++) {
			for (k = 0; k < 4; k++)
				FUNC3(fb, 0x1c, 0);

			FUNC3(fb, 0x1c, patt);
			FUNC3(fb, 0x3c, 0);

			if (FUNC2(fb, 0x1c) == patt)
				goto mem_width_found;
		}
	}

mem_width_found:
	patt <<= 1;

	/* Probe amount of installed memory */
	for (i = 0; i < 4; i++) {
		int off = FUNC7(priv, 0x10020c) - 0x100000;

		FUNC3(fb, off, patt);
		FUNC3(fb, 0, 0);

		FUNC2(fb, 0);
		FUNC2(fb, 0);
		FUNC2(fb, 0);
		FUNC2(fb, 0);

		if (FUNC2(fb, off) == patt)
			goto amount_found;
	}

	/* IC missing - disable the upper half memory space. */
	FUNC6(priv, NV04_PFB_CFG0, 0x1000, 0);

amount_found:
	FUNC0(fb);
}