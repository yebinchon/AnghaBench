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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  single_transfer; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OMAP1610_DMA_LCD_CCR ; 
 int /*<<< orphan*/  OMAP1610_DMA_LCD_CSDP ; 
 int /*<<< orphan*/  OMAP1610_DMA_LCD_LCH_CTRL ; 
 int /*<<< orphan*/  enable_1510_mode ; 
 TYPE_1__ lcd_dma ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{
	FUNC0(lcd_dma.active);
	if (!enable_1510_mode) {
		/* Set some reasonable defaults */
		FUNC2(0x5440, OMAP1610_DMA_LCD_CCR);
		FUNC2(0x9102, OMAP1610_DMA_LCD_CSDP);
		FUNC2(0x0004, OMAP1610_DMA_LCD_LCH_CTRL);
	}
	FUNC3();
	if (!enable_1510_mode) {
		u16 w;

		w = FUNC1(OMAP1610_DMA_LCD_CCR);
		/*
		 * If DMA was already active set the end_prog bit to have
		 * the programmed register set loaded into the active
		 * register set.
		 */
		w |= 1 << 11;		/* End_prog */
		if (!lcd_dma.single_transfer)
			w |= (3 << 8);	/* Auto_init, repeat */
		FUNC2(w, OMAP1610_DMA_LCD_CCR);
	}
}