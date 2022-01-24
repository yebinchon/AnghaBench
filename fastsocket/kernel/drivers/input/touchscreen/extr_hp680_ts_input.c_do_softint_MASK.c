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
typedef  int u8 ;
struct work_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  ADC_CHANNEL_TS_X ; 
 int /*<<< orphan*/  ADC_CHANNEL_TS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  HP680_TS_IRQ ; 
 int /*<<< orphan*/  PHDR ; 
 int PHDR_TS_PEN_DOWN ; 
 int /*<<< orphan*/  SCPDR ; 
 int SCPDR_TS_SCAN_ENABLE ; 
 int SCPDR_TS_SCAN_X ; 
 int SCPDR_TS_SCAN_Y ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hp680_ts_dev ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct work_struct *work)
{
	int absx = 0, absy = 0;
	u8 scpdr;
	int touched = 0;

	if (FUNC1(PHDR) & PHDR_TS_PEN_DOWN) {
		scpdr = FUNC1(SCPDR);
		scpdr |= SCPDR_TS_SCAN_ENABLE;
		scpdr &= ~SCPDR_TS_SCAN_Y;
		FUNC2(scpdr, SCPDR);
		FUNC7(30);

		absy = FUNC0(ADC_CHANNEL_TS_Y);

		scpdr = FUNC1(SCPDR);
		scpdr |= SCPDR_TS_SCAN_Y;
		scpdr &= ~SCPDR_TS_SCAN_X;
		FUNC2(scpdr, SCPDR);
		FUNC7(30);

		absx = FUNC0(ADC_CHANNEL_TS_X);

		scpdr = FUNC1(SCPDR);
		scpdr |= SCPDR_TS_SCAN_X;
		scpdr &= ~SCPDR_TS_SCAN_ENABLE;
		FUNC2(scpdr, SCPDR);
		FUNC7(100);
		touched = FUNC1(PHDR) & PHDR_TS_PEN_DOWN;
	}

	if (touched) {
		FUNC5(hp680_ts_dev, BTN_TOUCH, 1);
		FUNC4(hp680_ts_dev, ABS_X, absx);
		FUNC4(hp680_ts_dev, ABS_Y, absy);
	} else {
		FUNC5(hp680_ts_dev, BTN_TOUCH, 0);
	}

	FUNC6(hp680_ts_dev);
	FUNC3(HP680_TS_IRQ);
}