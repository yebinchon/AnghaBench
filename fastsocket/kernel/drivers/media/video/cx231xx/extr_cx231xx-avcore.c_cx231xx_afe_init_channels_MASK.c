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
struct cx231xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_CAL_ATEST_CH1 ; 
 int /*<<< orphan*/  ADC_CAL_ATEST_CH2 ; 
 int /*<<< orphan*/  ADC_CAL_ATEST_CH3 ; 
 int /*<<< orphan*/  ADC_COM_QUANT ; 
 int /*<<< orphan*/  ADC_DCSERVO_DEM_CH1 ; 
 int /*<<< orphan*/  ADC_DCSERVO_DEM_CH2 ; 
 int /*<<< orphan*/  ADC_DCSERVO_DEM_CH3 ; 
 int /*<<< orphan*/  ADC_FB_FRCRST_CH1 ; 
 int /*<<< orphan*/  ADC_FB_FRCRST_CH2 ; 
 int /*<<< orphan*/  ADC_FB_FRCRST_CH3 ; 
 int /*<<< orphan*/  ADC_NTF_PRECLMP_EN_CH1 ; 
 int /*<<< orphan*/  ADC_NTF_PRECLMP_EN_CH2 ; 
 int /*<<< orphan*/  ADC_NTF_PRECLMP_EN_CH3 ; 
 int /*<<< orphan*/  ADC_PWRDN_CLAMP_CH1 ; 
 int /*<<< orphan*/  ADC_PWRDN_CLAMP_CH2 ; 
 int /*<<< orphan*/  ADC_PWRDN_CLAMP_CH3 ; 
 int /*<<< orphan*/  ADC_QGAIN_RES_TRM_CH1 ; 
 int /*<<< orphan*/  ADC_QGAIN_RES_TRM_CH2 ; 
 int /*<<< orphan*/  ADC_QGAIN_RES_TRM_CH3 ; 
 int /*<<< orphan*/  AFE_DEVICE_ADDRESS ; 
 int FUNC0 (struct cx231xx*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct cx231xx*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(struct cx231xx *dev)
{
	int status = 0;

	/* power up all 3 channels, clear pd_buffer */
	status = FUNC0(dev, ADC_PWRDN_CLAMP_CH1, 0x00);
	status = FUNC0(dev, ADC_PWRDN_CLAMP_CH2, 0x00);
	status = FUNC0(dev, ADC_PWRDN_CLAMP_CH3, 0x00);

	/* Enable quantizer calibration */
	status = FUNC0(dev, ADC_COM_QUANT, 0x02);

	/* channel initialize, force modulator (fb) reset */
	status = FUNC0(dev, ADC_FB_FRCRST_CH1, 0x17);
	status = FUNC0(dev, ADC_FB_FRCRST_CH2, 0x17);
	status = FUNC0(dev, ADC_FB_FRCRST_CH3, 0x17);

	/* start quantilizer calibration  */
	status = FUNC0(dev, ADC_CAL_ATEST_CH1, 0x10);
	status = FUNC0(dev, ADC_CAL_ATEST_CH2, 0x10);
	status = FUNC0(dev, ADC_CAL_ATEST_CH3, 0x10);
	FUNC2(5);

	/* exit modulator (fb) reset */
	status = FUNC0(dev, ADC_FB_FRCRST_CH1, 0x07);
	status = FUNC0(dev, ADC_FB_FRCRST_CH2, 0x07);
	status = FUNC0(dev, ADC_FB_FRCRST_CH3, 0x07);

	/* enable the pre_clamp in each channel for single-ended input */
	status = FUNC0(dev, ADC_NTF_PRECLMP_EN_CH1, 0xf0);
	status = FUNC0(dev, ADC_NTF_PRECLMP_EN_CH2, 0xf0);
	status = FUNC0(dev, ADC_NTF_PRECLMP_EN_CH3, 0xf0);

	/* use diode instead of resistor, so set term_en to 0, res_en to 0  */
	status = FUNC1(dev, AFE_DEVICE_ADDRESS, 8,
				   ADC_QGAIN_RES_TRM_CH1, 3, 7, 0x00);
	status = FUNC1(dev, AFE_DEVICE_ADDRESS, 8,
				   ADC_QGAIN_RES_TRM_CH2, 3, 7, 0x00);
	status = FUNC1(dev, AFE_DEVICE_ADDRESS, 8,
				   ADC_QGAIN_RES_TRM_CH3, 3, 7, 0x00);

	/* dynamic element matching off */
	status = FUNC0(dev, ADC_DCSERVO_DEM_CH1, 0x03);
	status = FUNC0(dev, ADC_DCSERVO_DEM_CH2, 0x03);
	status = FUNC0(dev, ADC_DCSERVO_DEM_CH3, 0x03);

	return status;
}