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
typedef  int u32 ;
struct nv04_devinit_priv {int dummy; } ;
struct nouveau_devinit {int dummy; } ;
struct io_mapping {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV04_PFB_BOOT_0 ; 
 int NV04_PFB_BOOT_0_RAM_AMOUNT ; 
 int NV04_PFB_BOOT_0_RAM_AMOUNT_16MB ; 
 int NV04_PFB_BOOT_0_RAM_AMOUNT_4MB ; 
 int NV04_PFB_BOOT_0_RAM_AMOUNT_8MB ; 
 int NV04_PFB_BOOT_0_RAM_TYPE ; 
 int NV04_PFB_BOOT_0_RAM_TYPE_SDRAM_16MBIT ; 
 int NV04_PFB_BOOT_0_RAM_TYPE_SGRAM_16MBIT ; 
 int NV04_PFB_BOOT_0_RAM_TYPE_SGRAM_8MBIT ; 
 int NV04_PFB_BOOT_0_RAM_WIDTH_128 ; 
 int /*<<< orphan*/  NV04_PFB_DEBUG_0 ; 
 int NV04_PFB_DEBUG_0_REFRESH_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct io_mapping*) ; 
 struct io_mapping* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct io_mapping*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct io_mapping*,int,int) ; 
 scalar_t__ FUNC4 (struct io_mapping*,int,int) ; 
 TYPE_1__* FUNC5 (struct nv04_devinit_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct nv04_devinit_priv*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct nv04_devinit_priv*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (struct nv04_devinit_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nv04_devinit_priv*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC10(struct nouveau_devinit *devinit)
{
	struct nv04_devinit_priv *priv = (void *)devinit;
	u32 patt = 0xdeadbeef;
	struct io_mapping *fb;
	int i;

	/* Map the framebuffer aperture */
	fb = FUNC1(FUNC5(priv)->pdev);
	if (!fb) {
		FUNC6(priv, "failed to map fb\n");
		return;
	}

	/* Sequencer and refresh off */
	FUNC9(priv, 0, 1, FUNC8(priv, 0, 1) | 0x20);
	FUNC7(priv, NV04_PFB_DEBUG_0, 0, NV04_PFB_DEBUG_0_REFRESH_OFF);

	FUNC7(priv, NV04_PFB_BOOT_0, ~0,
		      NV04_PFB_BOOT_0_RAM_AMOUNT_16MB |
		      NV04_PFB_BOOT_0_RAM_WIDTH_128 |
		      NV04_PFB_BOOT_0_RAM_TYPE_SGRAM_16MBIT);

	for (i = 0; i < 4; i++)
		FUNC3(fb, 4 * i, patt);

	FUNC3(fb, 0x400000, patt + 1);

	if (FUNC2(fb, 0) == patt + 1) {
		FUNC7(priv, NV04_PFB_BOOT_0,
			      NV04_PFB_BOOT_0_RAM_TYPE,
			      NV04_PFB_BOOT_0_RAM_TYPE_SDRAM_16MBIT);
		FUNC7(priv, NV04_PFB_DEBUG_0,
			      NV04_PFB_DEBUG_0_REFRESH_OFF, 0);

		for (i = 0; i < 4; i++)
			FUNC3(fb, 4 * i, patt);

		if ((FUNC2(fb, 0xc) & 0xffff) != (patt & 0xffff))
			FUNC7(priv, NV04_PFB_BOOT_0,
				      NV04_PFB_BOOT_0_RAM_WIDTH_128 |
				      NV04_PFB_BOOT_0_RAM_AMOUNT,
				      NV04_PFB_BOOT_0_RAM_AMOUNT_8MB);
	} else
	if ((FUNC2(fb, 0xc) & 0xffff0000) != (patt & 0xffff0000)) {
		FUNC7(priv, NV04_PFB_BOOT_0,
			      NV04_PFB_BOOT_0_RAM_WIDTH_128 |
			      NV04_PFB_BOOT_0_RAM_AMOUNT,
			      NV04_PFB_BOOT_0_RAM_AMOUNT_4MB);
	} else
	if (FUNC2(fb, 0) != patt) {
		if (FUNC4(fb, 0x800000, patt))
			FUNC7(priv, NV04_PFB_BOOT_0,
				      NV04_PFB_BOOT_0_RAM_AMOUNT,
				      NV04_PFB_BOOT_0_RAM_AMOUNT_8MB);
		else
			FUNC7(priv, NV04_PFB_BOOT_0,
				      NV04_PFB_BOOT_0_RAM_AMOUNT,
				      NV04_PFB_BOOT_0_RAM_AMOUNT_4MB);

		FUNC7(priv, NV04_PFB_BOOT_0, NV04_PFB_BOOT_0_RAM_TYPE,
			      NV04_PFB_BOOT_0_RAM_TYPE_SGRAM_8MBIT);
	} else
	if (!FUNC4(fb, 0x800000, patt)) {
		FUNC7(priv, NV04_PFB_BOOT_0, NV04_PFB_BOOT_0_RAM_AMOUNT,
			      NV04_PFB_BOOT_0_RAM_AMOUNT_8MB);

	}

	/* Refresh on, sequencer on */
	FUNC7(priv, NV04_PFB_DEBUG_0, NV04_PFB_DEBUG_0_REFRESH_OFF, 0);
	FUNC9(priv, 0, 1, FUNC8(priv, 0, 1) & ~0x20);
	FUNC0(fb);
}