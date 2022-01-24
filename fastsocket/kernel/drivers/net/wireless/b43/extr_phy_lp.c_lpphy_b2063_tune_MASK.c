#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_7__ {int crystalfreq; } ;
struct TYPE_8__ {TYPE_3__ pmu; } ;
struct ssb_bus {TYPE_4__ chipco; } ;
struct b43_wldev {TYPE_2__* dev; } ;
struct b206x_channel {unsigned int channel; int* data; int freq; } ;
struct TYPE_6__ {TYPE_1__* sdev; } ;
struct TYPE_5__ {struct ssb_bus* bus; } ;

/* Variables and functions */
 int FUNC0 (struct b206x_channel*) ; 
 int /*<<< orphan*/  B2063_A_RX_1ST3 ; 
 int /*<<< orphan*/  B2063_A_RX_2ND1 ; 
 int /*<<< orphan*/  B2063_A_RX_2ND4 ; 
 int /*<<< orphan*/  B2063_A_RX_2ND7 ; 
 int /*<<< orphan*/  B2063_A_RX_PS6 ; 
 int /*<<< orphan*/  B2063_COMM15 ; 
 int /*<<< orphan*/  B2063_LOGEN_BUF2 ; 
 int /*<<< orphan*/  B2063_LOGEN_MIXER2 ; 
 int /*<<< orphan*/  B2063_LOGEN_RCCR1 ; 
 int /*<<< orphan*/  B2063_LOGEN_VCOBUF1 ; 
 int /*<<< orphan*/  B2063_PA_CTL11 ; 
 int /*<<< orphan*/  B2063_PLL_JTAG_PLL_CP2 ; 
 int /*<<< orphan*/  B2063_PLL_JTAG_PLL_CP3 ; 
 int /*<<< orphan*/  B2063_PLL_JTAG_PLL_LF1 ; 
 int /*<<< orphan*/  B2063_PLL_JTAG_PLL_LF2 ; 
 int /*<<< orphan*/  B2063_PLL_JTAG_PLL_LF3 ; 
 int /*<<< orphan*/  B2063_PLL_JTAG_PLL_LF4 ; 
 int /*<<< orphan*/  B2063_PLL_JTAG_PLL_SG1 ; 
 int /*<<< orphan*/  B2063_PLL_JTAG_PLL_SG2 ; 
 int /*<<< orphan*/  B2063_PLL_JTAG_PLL_SG3 ; 
 int /*<<< orphan*/  B2063_PLL_JTAG_PLL_SG4 ; 
 int /*<<< orphan*/  B2063_PLL_JTAG_PLL_VCO1 ; 
 int /*<<< orphan*/  B2063_PLL_JTAG_PLL_VCO_CALIB3 ; 
 int /*<<< orphan*/  B2063_PLL_JTAG_PLL_VCO_CALIB5 ; 
 int /*<<< orphan*/  B2063_PLL_JTAG_PLL_VCO_CALIB6 ; 
 int /*<<< orphan*/  B2063_PLL_JTAG_PLL_VCO_CALIB7 ; 
 int /*<<< orphan*/  B2063_PLL_JTAG_PLL_VCO_CALIB8 ; 
 int /*<<< orphan*/  B2063_PLL_JTAG_PLL_XTAL_12 ; 
 int /*<<< orphan*/  B2063_PLL_SP2 ; 
 int /*<<< orphan*/  B2063_TX_RF_CTL2 ; 
 int /*<<< orphan*/  B2063_TX_RF_CTL5 ; 
 scalar_t__ FUNC1 (int) ; 
 int EINVAL ; 
 struct b206x_channel* b2063_chantbl ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*) ; 
 int FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct b43_wldev *dev,
			    unsigned int channel)
{
	struct ssb_bus *bus = dev->dev->sdev->bus;

	static const struct b206x_channel *chandata = NULL;
	u32 crystal_freq = bus->chipco.pmu.crystalfreq * 1000;
	u32 freqref, vco_freq, val1, val2, val3, timeout, timeoutref, count;
	u16 old_comm15, scale;
	u32 tmp1, tmp2, tmp3, tmp4, tmp5, tmp6;
	int i, div = (crystal_freq <= 26000000 ? 1 : 2);

	for (i = 0; i < FUNC0(b2063_chantbl); i++) {
		if (b2063_chantbl[i].channel == channel) {
			chandata = &b2063_chantbl[i];
			break;
		}
	}

	if (FUNC1(!chandata))
		return -EINVAL;

	FUNC6(dev, B2063_LOGEN_VCOBUF1, chandata->data[0]);
	FUNC6(dev, B2063_LOGEN_MIXER2, chandata->data[1]);
	FUNC6(dev, B2063_LOGEN_BUF2, chandata->data[2]);
	FUNC6(dev, B2063_LOGEN_RCCR1, chandata->data[3]);
	FUNC6(dev, B2063_A_RX_1ST3, chandata->data[4]);
	FUNC6(dev, B2063_A_RX_2ND1, chandata->data[5]);
	FUNC6(dev, B2063_A_RX_2ND4, chandata->data[6]);
	FUNC6(dev, B2063_A_RX_2ND7, chandata->data[7]);
	FUNC6(dev, B2063_A_RX_PS6, chandata->data[8]);
	FUNC6(dev, B2063_TX_RF_CTL2, chandata->data[9]);
	FUNC6(dev, B2063_TX_RF_CTL5, chandata->data[10]);
	FUNC6(dev, B2063_PA_CTL11, chandata->data[11]);

	old_comm15 = FUNC4(dev, B2063_COMM15);
	FUNC5(dev, B2063_COMM15, 0x1E);

	if (chandata->freq > 4000) /* spec says 2484, but 4000 is safer */
		vco_freq = chandata->freq << 1;
	else
		vco_freq = chandata->freq << 2;

	freqref = crystal_freq * 3;
	val1 = FUNC8(crystal_freq, 1000000, 16);
	val2 = FUNC8(crystal_freq, 1000000 * div, 16);
	val3 = FUNC8(vco_freq, 3, 16);
	timeout = ((((8 * crystal_freq) / (div * 5000000)) + 1) >> 1) - 1;
	FUNC6(dev, B2063_PLL_JTAG_PLL_VCO_CALIB3, 0x2);
	FUNC3(dev, B2063_PLL_JTAG_PLL_VCO_CALIB6,
			  0xFFF8, timeout >> 2);
	FUNC3(dev, B2063_PLL_JTAG_PLL_VCO_CALIB7,
			  0xFF9F,timeout << 5);

	timeoutref = ((((8 * crystal_freq) / (div * (timeout + 1))) +
						999999) / 1000000) + 1;
	FUNC6(dev, B2063_PLL_JTAG_PLL_VCO_CALIB5, timeoutref);

	count = FUNC8(val3, val2 + 16, 16);
	count *= (timeout + 1) * (timeoutref + 1);
	count--;
	FUNC3(dev, B2063_PLL_JTAG_PLL_VCO_CALIB7,
						0xF0, count >> 8);
	FUNC6(dev, B2063_PLL_JTAG_PLL_VCO_CALIB8, count & 0xFF);

	tmp1 = ((val3 * 62500) / freqref) << 4;
	tmp2 = ((val3 * 62500) % freqref) << 4;
	while (tmp2 >= freqref) {
		tmp1++;
		tmp2 -= freqref;
	}
	FUNC3(dev, B2063_PLL_JTAG_PLL_SG1, 0xFFE0, tmp1 >> 4);
	FUNC3(dev, B2063_PLL_JTAG_PLL_SG2, 0xFE0F, tmp1 << 4);
	FUNC3(dev, B2063_PLL_JTAG_PLL_SG2, 0xFFF0, tmp1 >> 16);
	FUNC6(dev, B2063_PLL_JTAG_PLL_SG3, (tmp2 >> 8) & 0xFF);
	FUNC6(dev, B2063_PLL_JTAG_PLL_SG4, tmp2 & 0xFF);

	FUNC6(dev, B2063_PLL_JTAG_PLL_LF1, 0xB9);
	FUNC6(dev, B2063_PLL_JTAG_PLL_LF2, 0x88);
	FUNC6(dev, B2063_PLL_JTAG_PLL_LF3, 0x28);
	FUNC6(dev, B2063_PLL_JTAG_PLL_LF4, 0x63);

	tmp3 = ((41 * (val3 - 3000)) /1200) + 27;
	tmp4 = FUNC8(132000 * tmp1, 8451, 16);

	if ((tmp4 + tmp3 - 1) / tmp3 > 60) {
		scale = 1;
		tmp5 = ((tmp4 + tmp3) / (tmp3 << 1)) - 8;
	} else {
		scale = 0;
		tmp5 = ((tmp4 + (tmp3 >> 1)) / tmp3) - 8;
	}
	FUNC3(dev, B2063_PLL_JTAG_PLL_CP2, 0xFFC0, tmp5);
	FUNC3(dev, B2063_PLL_JTAG_PLL_CP2, 0xFFBF, scale << 6);

	tmp6 = FUNC8(100 * val1, val3, 16);
	tmp6 *= (tmp5 * 8) * (scale + 1);
	if (tmp6 > 150)
		tmp6 = 0;

	FUNC3(dev, B2063_PLL_JTAG_PLL_CP3, 0xFFE0, tmp6);
	FUNC3(dev, B2063_PLL_JTAG_PLL_CP3, 0xFFDF, scale << 5);

	FUNC3(dev, B2063_PLL_JTAG_PLL_XTAL_12, 0xFFFB, 0x4);
	if (crystal_freq > 26000000)
		FUNC5(dev, B2063_PLL_JTAG_PLL_XTAL_12, 0x2);
	else
		FUNC2(dev, B2063_PLL_JTAG_PLL_XTAL_12, 0xFD);

	if (val1 == 45)
		FUNC5(dev, B2063_PLL_JTAG_PLL_VCO1, 0x2);
	else
		FUNC2(dev, B2063_PLL_JTAG_PLL_VCO1, 0xFD);

	FUNC5(dev, B2063_PLL_SP2, 0x3);
	FUNC9(1);
	FUNC2(dev, B2063_PLL_SP2, 0xFFFC);
	FUNC7(dev);
	FUNC6(dev, B2063_COMM15, old_comm15);

	return 0;
}