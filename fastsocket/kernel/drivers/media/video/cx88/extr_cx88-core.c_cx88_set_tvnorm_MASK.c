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
typedef  int v4l2_std_id ;
typedef  int u64 ;
typedef  int u32 ;
struct cx88_core {int tvnorm; } ;

/* Variables and functions */
 int HLNotchFilter4xFsc ; 
 int /*<<< orphan*/  MO_AGC_BURST ; 
 int /*<<< orphan*/  MO_HTOTAL ; 
 int /*<<< orphan*/  MO_INPUT_FORMAT ; 
 int /*<<< orphan*/  MO_OUTPUT_FORMAT ; 
 int /*<<< orphan*/  MO_SCONV_REG ; 
 int /*<<< orphan*/  MO_SUB_STEP ; 
 int /*<<< orphan*/  MO_SUB_STEP_DR ; 
 int /*<<< orphan*/  MO_VBI_PACKET ; 
 int /*<<< orphan*/  V4L2_FIELD_INTERLACED ; 
 int V4L2_STD_NTSC ; 
 int V4L2_STD_NTSC_443 ; 
 int V4L2_STD_NTSC_M_JP ; 
 int V4L2_STD_PAL_60 ; 
 int V4L2_STD_PAL_M ; 
 int V4L2_STD_PAL_N ; 
 int V4L2_STD_PAL_Nc ; 
 int V4L2_STD_SECAM ; 
 int VideoFormatNTSC ; 
 int VideoFormatNTSC443 ; 
 int VideoFormatNTSCJapan ; 
 int VideoFormatPAL ; 
 int VideoFormatPAL60 ; 
 int VideoFormatPALM ; 
 int VideoFormatPALN ; 
 int VideoFormatPALNC ; 
 int VideoFormatSECAM ; 
 int /*<<< orphan*/  FUNC0 (struct cx88_core*,struct cx88_core*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx88_core*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,int,...) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  s_std ; 
 int /*<<< orphan*/  FUNC10 (struct cx88_core*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct cx88_core*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int xtal ; 

int FUNC13(struct cx88_core *core, v4l2_std_id norm)
{
	u32 fsc8;
	u32 adc_clock;
	u32 vdec_clock;
	u32 step_db,step_dr;
	u64 tmp64;
	u32 bdelay,agcdelay,htotal;
	u32 cxiformat, cxoformat;

	core->tvnorm = norm;
	fsc8       = FUNC7(norm);
	adc_clock  = xtal;
	vdec_clock = fsc8;
	step_db    = fsc8;
	step_dr    = fsc8;

	if (norm & V4L2_STD_NTSC_M_JP) {
		cxiformat = VideoFormatNTSCJapan;
		cxoformat = 0x181f0008;
	} else if (norm & V4L2_STD_NTSC_443) {
		cxiformat = VideoFormatNTSC443;
		cxoformat = 0x181f0008;
	} else if (norm & V4L2_STD_PAL_M) {
		cxiformat = VideoFormatPALM;
		cxoformat = 0x1c1f0008;
	} else if (norm & V4L2_STD_PAL_N) {
		cxiformat = VideoFormatPALN;
		cxoformat = 0x1c1f0008;
	} else if (norm & V4L2_STD_PAL_Nc) {
		cxiformat = VideoFormatPALNC;
		cxoformat = 0x1c1f0008;
	} else if (norm & V4L2_STD_PAL_60) {
		cxiformat = VideoFormatPAL60;
		cxoformat = 0x181f0008;
	} else if (norm & V4L2_STD_NTSC) {
		cxiformat = VideoFormatNTSC;
		cxoformat = 0x181f0008;
	} else if (norm & V4L2_STD_SECAM) {
		step_db = 4250000 * 8;
		step_dr = 4406250 * 8;

		cxiformat = VideoFormatSECAM;
		cxoformat = 0x181f0008;
	} else { /* PAL */
		cxiformat = VideoFormatPAL;
		cxoformat = 0x181f0008;
	}

	FUNC6(1,"set_tvnorm: \"%s\" fsc8=%d adc=%d vdec=%d db/dr=%d/%d\n",
		FUNC12(core->tvnorm), fsc8, adc_clock, vdec_clock,
		step_db, step_dr);
	FUNC10(core,2,vdec_clock);

	FUNC6(1,"set_tvnorm: MO_INPUT_FORMAT  0x%08x [old=0x%08x]\n",
		cxiformat, FUNC3(MO_INPUT_FORMAT) & 0x0f);
	/* Chroma AGC must be disabled if SECAM is used, we enable it
	   by default on PAL and NTSC */
	FUNC2(MO_INPUT_FORMAT, 0x40f,
		 norm & V4L2_STD_SECAM ? cxiformat : cxiformat | 0x400);

	// FIXME: as-is from DScaler
	FUNC6(1,"set_tvnorm: MO_OUTPUT_FORMAT 0x%08x [old=0x%08x]\n",
		cxoformat, FUNC3(MO_OUTPUT_FORMAT));
	FUNC4(MO_OUTPUT_FORMAT, cxoformat);

	// MO_SCONV_REG = adc clock / video dec clock * 2^17
	tmp64  = adc_clock * (u64)(1 << 17);
	FUNC5(tmp64, vdec_clock);
	FUNC6(1,"set_tvnorm: MO_SCONV_REG     0x%08x [old=0x%08x]\n",
		(u32)tmp64, FUNC3(MO_SCONV_REG));
	FUNC4(MO_SCONV_REG, (u32)tmp64);

	// MO_SUB_STEP = 8 * fsc / video dec clock * 2^22
	tmp64  = step_db * (u64)(1 << 22);
	FUNC5(tmp64, vdec_clock);
	FUNC6(1,"set_tvnorm: MO_SUB_STEP      0x%08x [old=0x%08x]\n",
		(u32)tmp64, FUNC3(MO_SUB_STEP));
	FUNC4(MO_SUB_STEP, (u32)tmp64);

	// MO_SUB_STEP_DR = 8 * 4406250 / video dec clock * 2^22
	tmp64  = step_dr * (u64)(1 << 22);
	FUNC5(tmp64, vdec_clock);
	FUNC6(1,"set_tvnorm: MO_SUB_STEP_DR   0x%08x [old=0x%08x]\n",
		(u32)tmp64, FUNC3(MO_SUB_STEP_DR));
	FUNC4(MO_SUB_STEP_DR, (u32)tmp64);

	// bdelay + agcdelay
	bdelay   = vdec_clock * 65 / 20000000 + 21;
	agcdelay = vdec_clock * 68 / 20000000 + 15;
	FUNC6(1,"set_tvnorm: MO_AGC_BURST     0x%08x [old=0x%08x,bdelay=%d,agcdelay=%d]\n",
		(bdelay << 8) | agcdelay, FUNC3(MO_AGC_BURST), bdelay, agcdelay);
	FUNC4(MO_AGC_BURST, (bdelay << 8) | agcdelay);

	// htotal
	tmp64 = FUNC8(norm) * (u64)vdec_clock;
	FUNC5(tmp64, fsc8);
	htotal = (u32)tmp64 | (HLNotchFilter4xFsc << 11);
	FUNC6(1,"set_tvnorm: MO_HTOTAL        0x%08x [old=0x%08x,htotal=%d]\n",
		htotal, FUNC3(MO_HTOTAL), (u32)tmp64);
	FUNC4(MO_HTOTAL, htotal);

	// vbi stuff, set vbi offset to 10 (for 20 Clk*2 pixels), this makes
	// the effective vbi offset ~244 samples, the same as the Bt8x8
	FUNC4(MO_VBI_PACKET, (10<<11) | FUNC9(norm));

	// this is needed as well to set all tvnorm parameter
	FUNC1(core, 320, 240, V4L2_FIELD_INTERLACED);

	// audio
	FUNC11(core);

	// tell i2c chips
	FUNC0(core, core, s_std, norm);

	// done
	return 0;
}