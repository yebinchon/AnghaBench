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
struct TYPE_2__ {int width; } ;
struct ccdc_params_ycbcr {int pix_fmt; int frm_fmt; int fid_pol; int hd_pol; int vd_pol; int pix_order; scalar_t__ buf_type; TYPE_1__ win; scalar_t__ bt656_enable; } ;

/* Variables and functions */
 scalar_t__ CCDC_BUFTYPE_FLD_INTERLEAVED ; 
 int /*<<< orphan*/  CCDC_CCDCFG ; 
 int CCDC_CCDCFG_Y8POS_SHIFT ; 
 int CCDC_DATA_PACK_ENABLE ; 
 int CCDC_FID_POL_MASK ; 
 int CCDC_FID_POL_SHIFT ; 
 int CCDC_HD_POL_MASK ; 
 int CCDC_HD_POL_SHIFT ; 
 int /*<<< orphan*/  CCDC_HSIZE_OFF ; 
 int CCDC_LATCH_ON_VSYNC_DISABLE ; 
 int /*<<< orphan*/  CCDC_REC656IF ; 
 int CCDC_REC656IF_BT656_EN ; 
 int /*<<< orphan*/  CCDC_SDOFST ; 
 int CCDC_SDOFST_FIELD_INTERLEAVED ; 
 int CCDC_SYN_FLDMODE_MASK ; 
 int CCDC_SYN_FLDMODE_SHIFT ; 
 int /*<<< orphan*/  CCDC_SYN_MODE ; 
 int CCDC_SYN_MODE_8BITS ; 
 int CCDC_SYN_MODE_INPMOD_MASK ; 
 int CCDC_SYN_MODE_INPMOD_SHIFT ; 
 int CCDC_SYN_MODE_VD_POL_NEGATIVE ; 
 int CCDC_VDHDEN_ENABLE ; 
 int CCDC_VD_POL_MASK ; 
 int CCDC_VD_POL_SHIFT ; 
 int CCDC_WEN_ENABLE ; 
 struct ccdc_params_ycbcr ccdc_hw_params_ycbcr ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	struct ccdc_params_ycbcr *params = &ccdc_hw_params_ycbcr;
	u32 syn_mode;

	FUNC4(dev, "\nStarting ccdc_config_ycbcr...");
	/*
	 * first restore the CCDC registers to default values
	 * This is important since we assume default values to be set in
	 * a lot of registers that we didn't touch
	 */
	FUNC1();

	/*
	 * configure pixel format, frame format, configure video frame
	 * format, enable output to SDRAM, enable internal timing generator
	 * and 8bit pack mode
	 */
	syn_mode = (((params->pix_fmt & CCDC_SYN_MODE_INPMOD_MASK) <<
		    CCDC_SYN_MODE_INPMOD_SHIFT) |
		    ((params->frm_fmt & CCDC_SYN_FLDMODE_MASK) <<
		    CCDC_SYN_FLDMODE_SHIFT) | CCDC_VDHDEN_ENABLE |
		    CCDC_WEN_ENABLE | CCDC_DATA_PACK_ENABLE);

	/* setup BT.656 sync mode */
	if (params->bt656_enable) {
		FUNC5(CCDC_REC656IF_BT656_EN, CCDC_REC656IF);

		/*
		 * configure the FID, VD, HD pin polarity,
		 * fld,hd pol positive, vd negative, 8-bit data
		 */
		syn_mode |= CCDC_SYN_MODE_VD_POL_NEGATIVE | CCDC_SYN_MODE_8BITS;
	} else {
		/* y/c external sync mode */
		syn_mode |= (((params->fid_pol & CCDC_FID_POL_MASK) <<
			     CCDC_FID_POL_SHIFT) |
			     ((params->hd_pol & CCDC_HD_POL_MASK) <<
			     CCDC_HD_POL_SHIFT) |
			     ((params->vd_pol & CCDC_VD_POL_MASK) <<
			     CCDC_VD_POL_SHIFT));
	}
	FUNC5(syn_mode, CCDC_SYN_MODE);

	/* configure video window */
	FUNC3(&params->win, params->frm_fmt, 2);

	/*
	 * configure the order of y cb cr in SDRAM, and disable latch
	 * internal register on vsync
	 */
	FUNC5((params->pix_order << CCDC_CCDCFG_Y8POS_SHIFT) |
		 CCDC_LATCH_ON_VSYNC_DISABLE, CCDC_CCDCFG);

	/*
	 * configure the horizontal line offset. This should be a
	 * on 32 byte bondary. So clear LSB 5 bits
	 */
	FUNC5(((params->win.width * 2  + 31) & ~0x1f), CCDC_HSIZE_OFF);

	/* configure the memory line offset */
	if (params->buf_type == CCDC_BUFTYPE_FLD_INTERLEAVED)
		/* two fields are interleaved in memory */
		FUNC5(CCDC_SDOFST_FIELD_INTERLEAVED, CCDC_SDOFST);

	FUNC2();
	FUNC4(dev, "\nEnd of ccdc_config_ycbcr...\n");
	FUNC0();
}