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
struct TYPE_2__ {int /*<<< orphan*/  ext_ctrl; scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP1610_DMA_LCD_CCR ; 
 int /*<<< orphan*/  OMAP1610_DMA_LCD_CTRL ; 
 scalar_t__ enable_1510_mode ; 
 TYPE_1__ lcd_dma ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	u16 w;

	lcd_dma.active = 0;
	if (enable_1510_mode || !lcd_dma.ext_ctrl)
		return;

	w = FUNC0(OMAP1610_DMA_LCD_CCR);
	w &= ~(1 << 7);
	FUNC1(w, OMAP1610_DMA_LCD_CCR);

	w = FUNC0(OMAP1610_DMA_LCD_CTRL);
	w &= ~(1 << 8);
	FUNC1(w, OMAP1610_DMA_LCD_CTRL);
}