#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct saa7146_standard {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  num; } ;
struct av7110 {int analog_tuner_flags; TYPE_3__* dev; TYPE_2__ dvb_adapter; int /*<<< orphan*/  adac_type; } ;
struct TYPE_8__ {TYPE_1__* pci; } ;
struct TYPE_6__ {int subsystem_vendor; int subsystem_device; } ;

/* Variables and functions */
 int ANALOG_TUNER_STV0297 ; 
 int ANALOG_TUNER_VES1820 ; 
 int /*<<< orphan*/  DD1_INIT ; 
 int /*<<< orphan*/  DD1_STREAM_B ; 
 int /*<<< orphan*/  DVB_ADAC_MSP34x0 ; 
 int /*<<< orphan*/  DVB_ADAC_MSP34x5 ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MASK_09 ; 
 int MASK_10 ; 
 int MASK_25 ; 
 int MASK_26 ; 
 int /*<<< orphan*/  MC2 ; 
 int /*<<< orphan*/  MSP_RD_DSP ; 
 int /*<<< orphan*/  MSP_WR_DEM ; 
 int /*<<< orphan*/  MSP_WR_DSP ; 
 int /*<<< orphan*/  SAA7146_GPIO_OUTLO ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  dvb_standard ; 
 int FUNC2 (struct av7110*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct av7110*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct av7110*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int* saa7113_init_regs ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  standard ; 
 scalar_t__ FUNC10 (TYPE_3__*,int,int,int) ; 

int FUNC11(struct av7110 *av7110)
{
	u16 version1, version2;

	if (FUNC2(av7110, 0x80, 0x0, 0x80) == 1 &&
	    FUNC2(av7110, 0x80, 0x0, 0) == 1) {
		FUNC7("dvb-ttpci: DVB-C analog module @ card %d detected, initializing MSP3400\n",
			av7110->dvb_adapter.num);
		av7110->adac_type = DVB_ADAC_MSP34x0;
	} else if (FUNC2(av7110, 0x84, 0x0, 0x80) == 1 &&
		   FUNC2(av7110, 0x84, 0x0, 0) == 1) {
		FUNC7("dvb-ttpci: DVB-C analog module @ card %d detected, initializing MSP3415\n",
			av7110->dvb_adapter.num);
		av7110->adac_type = DVB_ADAC_MSP34x5;
	} else
		return -ENODEV;

	FUNC4(100); // the probing above resets the msp...
	FUNC5(av7110, MSP_RD_DSP, 0x001e, &version1);
	FUNC5(av7110, MSP_RD_DSP, 0x001f, &version2);
	FUNC1(1, "dvb-ttpci: @ card %d MSP34xx version 0x%04x 0x%04x\n",
		av7110->dvb_adapter.num, version1, version2);
	FUNC6(av7110, MSP_WR_DSP, 0x0013, 0x0c00);
	FUNC6(av7110, MSP_WR_DSP, 0x0000, 0x7f00); // loudspeaker + headphone
	FUNC6(av7110, MSP_WR_DSP, 0x0008, 0x0220); // loudspeaker source
	FUNC6(av7110, MSP_WR_DSP, 0x0009, 0x0220); // headphone source
	FUNC6(av7110, MSP_WR_DSP, 0x0004, 0x7f00); // loudspeaker volume
	FUNC6(av7110, MSP_WR_DSP, 0x000a, 0x0220); // SCART 1 source
	FUNC6(av7110, MSP_WR_DSP, 0x0007, 0x7f00); // SCART 1 volume
	FUNC6(av7110, MSP_WR_DSP, 0x000d, 0x1900); // prescale SCART

	if (FUNC2(av7110, 0x48, 0x01, 0x00)!=1) {
		FUNC0(("saa7113 not accessible.\n"));
	} else {
		u8 *i = saa7113_init_regs;

		if ((av7110->dev->pci->subsystem_vendor == 0x110a) && (av7110->dev->pci->subsystem_device == 0x0000)) {
			/* Fujitsu/Siemens DVB-Cable */
			av7110->analog_tuner_flags |= ANALOG_TUNER_VES1820;
		} else if ((av7110->dev->pci->subsystem_vendor == 0x13c2) && (av7110->dev->pci->subsystem_device == 0x0002)) {
			/* Hauppauge/TT DVB-C premium */
			av7110->analog_tuner_flags |= ANALOG_TUNER_VES1820;
		} else if ((av7110->dev->pci->subsystem_vendor == 0x13c2) && (av7110->dev->pci->subsystem_device == 0x000A)) {
			/* Hauppauge/TT DVB-C premium */
			av7110->analog_tuner_flags |= ANALOG_TUNER_STV0297;
		}

		/* setup for DVB by default */
		if (av7110->analog_tuner_flags & ANALOG_TUNER_VES1820) {
			if (FUNC10(av7110->dev, 0x09, 0x0f, 0x20))
				FUNC1(1, "setting band in demodulator failed.\n");
		} else if (av7110->analog_tuner_flags & ANALOG_TUNER_STV0297) {
			FUNC8(av7110->dev, 1, SAA7146_GPIO_OUTLO); // TDA9819 pin9(STD)
			FUNC8(av7110->dev, 3, SAA7146_GPIO_OUTLO); // TDA9819 pin30(VIF)
		}

		/* init the saa7113 */
		while (*i != 0xff) {
			if (FUNC2(av7110, 0x48, i[0], i[1]) != 1) {
				FUNC1(1, "saa7113 initialization failed @ card %d", av7110->dvb_adapter.num);
				break;
			}
			i += 2;
		}
		/* setup msp for analog sound: B/G Dual-FM */
		FUNC6(av7110, MSP_WR_DEM, 0x00bb, 0x02d0); // AD_CV
		FUNC6(av7110, MSP_WR_DEM, 0x0001,  3); // FIR1
		FUNC6(av7110, MSP_WR_DEM, 0x0001, 18); // FIR1
		FUNC6(av7110, MSP_WR_DEM, 0x0001, 27); // FIR1
		FUNC6(av7110, MSP_WR_DEM, 0x0001, 48); // FIR1
		FUNC6(av7110, MSP_WR_DEM, 0x0001, 66); // FIR1
		FUNC6(av7110, MSP_WR_DEM, 0x0001, 72); // FIR1
		FUNC6(av7110, MSP_WR_DEM, 0x0005,  4); // FIR2
		FUNC6(av7110, MSP_WR_DEM, 0x0005, 64); // FIR2
		FUNC6(av7110, MSP_WR_DEM, 0x0005,  0); // FIR2
		FUNC6(av7110, MSP_WR_DEM, 0x0005,  3); // FIR2
		FUNC6(av7110, MSP_WR_DEM, 0x0005, 18); // FIR2
		FUNC6(av7110, MSP_WR_DEM, 0x0005, 27); // FIR2
		FUNC6(av7110, MSP_WR_DEM, 0x0005, 48); // FIR2
		FUNC6(av7110, MSP_WR_DEM, 0x0005, 66); // FIR2
		FUNC6(av7110, MSP_WR_DEM, 0x0005, 72); // FIR2
		FUNC6(av7110, MSP_WR_DEM, 0x0083, 0xa000); // MODE_REG
		FUNC6(av7110, MSP_WR_DEM, 0x0093, 0x00aa); // DCO1_LO 5.74MHz
		FUNC6(av7110, MSP_WR_DEM, 0x009b, 0x04fc); // DCO1_HI
		FUNC6(av7110, MSP_WR_DEM, 0x00a3, 0x038e); // DCO2_LO 5.5MHz
		FUNC6(av7110, MSP_WR_DEM, 0x00ab, 0x04c6); // DCO2_HI
		FUNC6(av7110, MSP_WR_DEM, 0x0056, 0); // LOAD_REG 1/2
	}

	FUNC3(standard, dvb_standard, sizeof(struct saa7146_standard) * 2);
	/* set dd1 stream a & b */
	FUNC9(av7110->dev, DD1_STREAM_B, 0x00000000);
	FUNC9(av7110->dev, DD1_INIT, 0x03000700);
	FUNC9(av7110->dev, MC2, (MASK_09 | MASK_25 | MASK_10 | MASK_26));

	return 0;
}