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

/* Variables and functions */
 int /*<<< orphan*/  PICTRL_ADRS ; 
 int PICTRL_COM_SIGNAL_OFF ; 
 int PICTRL_DAC_SIGNAL_OFF ; 
 int PICTRL_INIOFF ; 
 int PICTRL_POWER_DOWN ; 
 int POWER0_COM_OFF ; 
 int POWER0_DAC_OFF ; 
 int POWER0_DAC_ON ; 
 int POWER0_VCC5_OFF ; 
 int POWER0_VCC5_ON ; 
 int POWER1_GVSS_OFF ; 
 int POWER1_GVSS_ON ; 
 int POWER1_VDD_OFF ; 
 int POWER1_VDD_ON ; 
 int POWER1_VW_OFF ; 
 int /*<<< orphan*/  POWERREG0_ADRS ; 
 int /*<<< orphan*/  POWERREG1_ADRS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ lcd_inited ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(void)
{
	/* 60Hz x 2 frame = 16.7msec x 2 = 33.4 msec */
	FUNC2(34);

	/* (1)VW OFF */
	FUNC0(POWERREG1_ADRS, POWER1_VW_OFF | POWER1_GVSS_ON | POWER1_VDD_ON);

	/* (2)COM OFF */
	FUNC0(PICTRL_ADRS, PICTRL_COM_SIGNAL_OFF);
	FUNC0(POWERREG0_ADRS, POWER0_DAC_ON | POWER0_COM_OFF | POWER0_VCC5_ON);

	/* (3)Set Common Voltage Bias 0V */
	FUNC1(POWER0_DAC_ON | POWER0_COM_OFF | POWER0_VCC5_ON, 0);

	/* (4)GVSS OFF */
	FUNC0(POWERREG1_ADRS, POWER1_VW_OFF | POWER1_GVSS_OFF | POWER1_VDD_ON);

	/* (5)VCC5 OFF */
	FUNC0(POWERREG0_ADRS, POWER0_DAC_ON | POWER0_COM_OFF | POWER0_VCC5_OFF);

	/* (6)Set PDWN, INIOFF, DACOFF */
	FUNC0(PICTRL_ADRS, PICTRL_INIOFF | PICTRL_DAC_SIGNAL_OFF |
			PICTRL_POWER_DOWN | PICTRL_COM_SIGNAL_OFF);

	/* (7)DAC OFF */
	FUNC0(POWERREG0_ADRS, POWER0_DAC_OFF | POWER0_COM_OFF | POWER0_VCC5_OFF);

	/* (8)VDD OFF */
	FUNC0(POWERREG1_ADRS, POWER1_VW_OFF | POWER1_GVSS_OFF | POWER1_VDD_OFF);

	lcd_inited = 0;
}