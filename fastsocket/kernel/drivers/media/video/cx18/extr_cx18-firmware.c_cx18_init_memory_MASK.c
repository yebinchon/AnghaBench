#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cx18 {TYPE_2__* card; } ;
struct TYPE_3__ {int chip_config; int refresh; int timing1; int timing2; int tune_lane; int initial_emrs; } ;
struct TYPE_4__ {TYPE_1__ ddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX18_DDR_BASE_63_ADDR ; 
 int /*<<< orphan*/  CX18_DDR_CHIP_CONFIG ; 
 int /*<<< orphan*/  CX18_DDR_INITIAL_EMRS ; 
 int /*<<< orphan*/  CX18_DDR_MB_PER_ROW_7 ; 
 int /*<<< orphan*/  CX18_DDR_POWER_REG ; 
 int /*<<< orphan*/  CX18_DDR_REFRESH ; 
 int /*<<< orphan*/  CX18_DDR_SOFT_RESET ; 
 int /*<<< orphan*/  CX18_DDR_TIMING1 ; 
 int /*<<< orphan*/  CX18_DDR_TIMING2 ; 
 int /*<<< orphan*/  CX18_DDR_TUNE_LANE ; 
 int /*<<< orphan*/  CX18_REG_BUS_TIMEOUT_EN ; 
 int /*<<< orphan*/  CX18_WMB_CLIENT02 ; 
 int /*<<< orphan*/  CX18_WMB_CLIENT05 ; 
 int /*<<< orphan*/  CX18_WMB_CLIENT06 ; 
 int /*<<< orphan*/  CX18_WMB_CLIENT07 ; 
 int /*<<< orphan*/  CX18_WMB_CLIENT09 ; 
 int /*<<< orphan*/  CX18_WMB_CLIENT10 ; 
 int /*<<< orphan*/  CX18_WMB_CLIENT11 ; 
 int /*<<< orphan*/  CX18_WMB_CLIENT12 ; 
 int /*<<< orphan*/  CX18_WMB_CLIENT13 ; 
 int /*<<< orphan*/  CX18_WMB_CLIENT14 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cx18*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cx18*,int,int /*<<< orphan*/ ,int,int) ; 

void FUNC3(struct cx18 *cx)
{
	FUNC0(10, 0);
	FUNC2(cx, 0x00010000, CX18_DDR_SOFT_RESET,
				  0x00000000, 0x00010001);
	FUNC0(10, 0);

	FUNC1(cx, cx->card->ddr.chip_config, CX18_DDR_CHIP_CONFIG);

	FUNC0(10, 0);

	FUNC1(cx, cx->card->ddr.refresh, CX18_DDR_REFRESH);
	FUNC1(cx, cx->card->ddr.timing1, CX18_DDR_TIMING1);
	FUNC1(cx, cx->card->ddr.timing2, CX18_DDR_TIMING2);

	FUNC0(10, 0);

	/* Initialize DQS pad time */
	FUNC1(cx, cx->card->ddr.tune_lane, CX18_DDR_TUNE_LANE);
	FUNC1(cx, cx->card->ddr.initial_emrs, CX18_DDR_INITIAL_EMRS);

	FUNC0(10, 0);

	FUNC2(cx, 0x00020000, CX18_DDR_SOFT_RESET,
				  0x00000000, 0x00020002);
	FUNC0(10, 0);

	/* use power-down mode when idle */
	FUNC1(cx, 0x00000010, CX18_DDR_POWER_REG);

	FUNC2(cx, 0x00010001, CX18_REG_BUS_TIMEOUT_EN,
				  0x00000001, 0x00010001);

	FUNC1(cx, 0x48, CX18_DDR_MB_PER_ROW_7);
	FUNC1(cx, 0xE0000, CX18_DDR_BASE_63_ADDR);

	FUNC1(cx, 0x00000101, CX18_WMB_CLIENT02);  /* AO */
	FUNC1(cx, 0x00000101, CX18_WMB_CLIENT09);  /* AI2 */
	FUNC1(cx, 0x00000101, CX18_WMB_CLIENT05);  /* VIM1 */
	FUNC1(cx, 0x00000101, CX18_WMB_CLIENT06);  /* AI1 */
	FUNC1(cx, 0x00000101, CX18_WMB_CLIENT07);  /* 3D comb */
	FUNC1(cx, 0x00000101, CX18_WMB_CLIENT10);  /* ME */
	FUNC1(cx, 0x00000101, CX18_WMB_CLIENT12);  /* ENC */
	FUNC1(cx, 0x00000101, CX18_WMB_CLIENT13);  /* PK */
	FUNC1(cx, 0x00000101, CX18_WMB_CLIENT11);  /* RC */
	FUNC1(cx, 0x00000101, CX18_WMB_CLIENT14);  /* AVO */
}