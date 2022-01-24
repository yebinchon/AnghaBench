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
struct TYPE_4__ {unsigned int left; unsigned int width; unsigned int top; unsigned int height; } ;
struct TYPE_3__ {unsigned int gama_wd; scalar_t__ enable; } ;
struct ccdc_config_params_raw {unsigned int data_sz; TYPE_1__ alaw; int /*<<< orphan*/  fault_pxl; int /*<<< orphan*/  blk_comp; int /*<<< orphan*/  blk_clamp; } ;
struct ccdc_params_raw {unsigned int vd_pol; unsigned int hd_pol; unsigned int fid_pol; unsigned int frm_fmt; unsigned int pix_fmt; TYPE_2__ win; scalar_t__ image_invert_enable; struct ccdc_config_params_raw config_params; } ;

/* Variables and functions */
 unsigned int CCDC_32BYTE_ALIGN_VAL ; 
 int /*<<< orphan*/  CCDC_ALAW ; 
 unsigned int CCDC_ALAW_ENABLE ; 
 unsigned int CCDC_ALAW_GAMA_WD_MASK ; 
 int /*<<< orphan*/  CCDC_CCDCFG ; 
 int /*<<< orphan*/  CCDC_COLPTN ; 
 unsigned int CCDC_COLPTN_VAL ; 
 unsigned int CCDC_DATA_10BITS ; 
 unsigned int CCDC_DATA_8BITS ; 
 unsigned int CCDC_DATA_PACK_ENABLE ; 
 unsigned int CCDC_DATA_SZ_MASK ; 
 unsigned int CCDC_DATA_SZ_SHIFT ; 
 unsigned int CCDC_DISABLE_VIDEO_PORT ; 
 unsigned int CCDC_ENABLE_VIDEO_PORT ; 
 unsigned int CCDC_FID_POL_MASK ; 
 unsigned int CCDC_FID_POL_SHIFT ; 
 int /*<<< orphan*/  CCDC_FMTCFG ; 
 unsigned int CCDC_FMTCFG_VPIN_MASK ; 
 unsigned int CCDC_FMTCFG_VPIN_SHIFT ; 
 int /*<<< orphan*/  CCDC_FMT_HORZ ; 
 unsigned int CCDC_FMT_HORZ_FMTLNH_MASK ; 
 unsigned int CCDC_FMT_HORZ_FMTSPH_MASK ; 
 unsigned int CCDC_FMT_HORZ_FMTSPH_SHIFT ; 
 int /*<<< orphan*/  CCDC_FMT_VERT ; 
 unsigned int CCDC_FMT_VERT_FMTLNV_MASK ; 
 unsigned int CCDC_FMT_VERT_FMTSLV_MASK ; 
 unsigned int CCDC_FMT_VERT_FMTSLV_SHIFT ; 
 unsigned int CCDC_FRMFMT_INTERLACED ; 
 unsigned int CCDC_FRMFMT_PROGRESSIVE ; 
 unsigned int CCDC_FRM_FMT_MASK ; 
 unsigned int CCDC_FRM_FMT_SHIFT ; 
 unsigned int CCDC_HD_POL_MASK ; 
 unsigned int CCDC_HD_POL_SHIFT ; 
 int /*<<< orphan*/  CCDC_HSIZE_OFF ; 
 unsigned int CCDC_HSIZE_OFF_MASK ; 
 int CCDC_INTERLACED_HEIGHT_SHIFT ; 
 unsigned int CCDC_INTERLACED_IMAGE_INVERT ; 
 unsigned int CCDC_INTERLACED_NO_IMAGE_INVERT ; 
 unsigned int CCDC_LATCH_ON_VSYNC_DISABLE ; 
 unsigned int CCDC_PIX_FMT_MASK ; 
 unsigned int CCDC_PIX_FMT_SHIFT ; 
 int /*<<< orphan*/  CCDC_PPC_RAW ; 
 unsigned int CCDC_PROGRESSIVE_NO_IMAGE_INVERT ; 
 int /*<<< orphan*/  CCDC_SDOFST ; 
 int /*<<< orphan*/  CCDC_SYN_MODE ; 
 unsigned int CCDC_TWO_BYTES_PER_PIXEL ; 
 unsigned int CCDC_VDHDEN_ENABLE ; 
 unsigned int CCDC_VD_POL_MASK ; 
 unsigned int CCDC_VD_POL_SHIFT ; 
 int /*<<< orphan*/  CCDC_VP_OUT ; 
 unsigned int CCDC_VP_OUT_HORZ_NUM_MASK ; 
 unsigned int CCDC_VP_OUT_HORZ_NUM_SHIFT ; 
 unsigned int CCDC_VP_OUT_HORZ_ST_MASK ; 
 int CCDC_VP_OUT_VERT_NUM_MASK ; 
 int CCDC_VP_OUT_VERT_NUM_SHIFT ; 
 unsigned int CCDC_WEN_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ccdc_params_raw ccdc_hw_params_raw ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int /*<<< orphan*/ ) ; 

void FUNC9(void)
{
	struct ccdc_params_raw *params = &ccdc_hw_params_raw;
	struct ccdc_config_params_raw *config_params =
		&ccdc_hw_params_raw.config_params;
	unsigned int syn_mode = 0;
	unsigned int val;

	FUNC7(dev, "\nStarting ccdc_config_raw...");

	/*      Reset CCDC */
	FUNC4();

	/* Disable latching function registers on VSYNC  */
	FUNC8(CCDC_LATCH_ON_VSYNC_DISABLE, CCDC_CCDCFG);

	/*
	 * Configure the vertical sync polarity(SYN_MODE.VDPOL),
	 * horizontal sync polarity (SYN_MODE.HDPOL), frame id polarity
	 * (SYN_MODE.FLDPOL), frame format(progressive or interlace),
	 * data size(SYNMODE.DATSIZ), &pixel format (Input mode), output
	 * SDRAM, enable internal timing generator
	 */
	syn_mode =
		(((params->vd_pol & CCDC_VD_POL_MASK) << CCDC_VD_POL_SHIFT) |
		((params->hd_pol & CCDC_HD_POL_MASK) << CCDC_HD_POL_SHIFT) |
		((params->fid_pol & CCDC_FID_POL_MASK) << CCDC_FID_POL_SHIFT) |
		((params->frm_fmt & CCDC_FRM_FMT_MASK) << CCDC_FRM_FMT_SHIFT) |
		((config_params->data_sz & CCDC_DATA_SZ_MASK) <<
		CCDC_DATA_SZ_SHIFT) |
		((params->pix_fmt & CCDC_PIX_FMT_MASK) << CCDC_PIX_FMT_SHIFT) |
		CCDC_WEN_ENABLE | CCDC_VDHDEN_ENABLE);

	/* Enable and configure aLaw register if needed */
	if (config_params->alaw.enable) {
		val = ((config_params->alaw.gama_wd &
		      CCDC_ALAW_GAMA_WD_MASK) | CCDC_ALAW_ENABLE);
		FUNC8(val, CCDC_ALAW);
		FUNC7(dev, "\nWriting 0x%x to ALAW...\n", val);
	}

	/* Configure video window */
	FUNC6(&params->win, params->frm_fmt, CCDC_PPC_RAW);

	/* Configure Black Clamp */
	FUNC0(&config_params->blk_clamp);

	/* Configure Black level compensation */
	FUNC1(&config_params->blk_comp);

	/* Configure Fault Pixel Correction */
	FUNC2(&config_params->fault_pxl);

	/* If data size is 8 bit then pack the data */
	if ((config_params->data_sz == CCDC_DATA_8BITS) ||
	     config_params->alaw.enable)
		syn_mode |= CCDC_DATA_PACK_ENABLE;

#ifdef CONFIG_DM644X_VIDEO_PORT_ENABLE
	/* enable video port */
	val = CCDC_ENABLE_VIDEO_PORT;
#else
	/* disable video port */
	val = CCDC_DISABLE_VIDEO_PORT;
#endif

	if (config_params->data_sz == CCDC_DATA_8BITS)
		val |= (CCDC_DATA_10BITS & CCDC_FMTCFG_VPIN_MASK)
		    << CCDC_FMTCFG_VPIN_SHIFT;
	else
		val |= (config_params->data_sz & CCDC_FMTCFG_VPIN_MASK)
		    << CCDC_FMTCFG_VPIN_SHIFT;
	/* Write value in FMTCFG */
	FUNC8(val, CCDC_FMTCFG);

	FUNC7(dev, "\nWriting 0x%x to FMTCFG...\n", val);
	/* Configure the color pattern according to mt9t001 sensor */
	FUNC8(CCDC_COLPTN_VAL, CCDC_COLPTN);

	FUNC7(dev, "\nWriting 0xBB11BB11 to COLPTN...\n");
	/*
	 * Configure Data formatter(Video port) pixel selection
	 * (FMT_HORZ, FMT_VERT)
	 */
	val = ((params->win.left & CCDC_FMT_HORZ_FMTSPH_MASK) <<
	      CCDC_FMT_HORZ_FMTSPH_SHIFT) |
	      (params->win.width & CCDC_FMT_HORZ_FMTLNH_MASK);
	FUNC8(val, CCDC_FMT_HORZ);

	FUNC7(dev, "\nWriting 0x%x to FMT_HORZ...\n", val);
	val = (params->win.top & CCDC_FMT_VERT_FMTSLV_MASK)
	    << CCDC_FMT_VERT_FMTSLV_SHIFT;
	if (params->frm_fmt == CCDC_FRMFMT_PROGRESSIVE)
		val |= (params->win.height) & CCDC_FMT_VERT_FMTLNV_MASK;
	else
		val |= (params->win.height >> 1) & CCDC_FMT_VERT_FMTLNV_MASK;

	FUNC7(dev, "\nparams->win.height  0x%x ...\n",
	       params->win.height);
	FUNC8(val, CCDC_FMT_VERT);

	FUNC7(dev, "\nWriting 0x%x to FMT_VERT...\n", val);

	FUNC7(dev, "\nbelow regw(val, FMT_VERT)...");

	/*
	 * Configure Horizontal offset register. If pack 8 is enabled then
	 * 1 pixel will take 1 byte
	 */
	if ((config_params->data_sz == CCDC_DATA_8BITS) ||
	    config_params->alaw.enable)
		FUNC8((params->win.width + CCDC_32BYTE_ALIGN_VAL) &
		    CCDC_HSIZE_OFF_MASK, CCDC_HSIZE_OFF);
	else
		/* else one pixel will take 2 byte */
		FUNC8(((params->win.width * CCDC_TWO_BYTES_PER_PIXEL) +
		    CCDC_32BYTE_ALIGN_VAL) & CCDC_HSIZE_OFF_MASK,
		    CCDC_HSIZE_OFF);

	/* Set value for SDOFST */
	if (params->frm_fmt == CCDC_FRMFMT_INTERLACED) {
		if (params->image_invert_enable) {
			/* For intelace inverse mode */
			FUNC8(CCDC_INTERLACED_IMAGE_INVERT, CCDC_SDOFST);
			FUNC7(dev, "\nWriting 0x4B6D to SDOFST...\n");
		}

		else {
			/* For intelace non inverse mode */
			FUNC8(CCDC_INTERLACED_NO_IMAGE_INVERT, CCDC_SDOFST);
			FUNC7(dev, "\nWriting 0x0249 to SDOFST...\n");
		}
	} else if (params->frm_fmt == CCDC_FRMFMT_PROGRESSIVE) {
		FUNC8(CCDC_PROGRESSIVE_NO_IMAGE_INVERT, CCDC_SDOFST);
		FUNC7(dev, "\nWriting 0x0000 to SDOFST...\n");
	}

	/*
	 * Configure video port pixel selection (VPOUT)
	 * Here -1 is to make the height value less than FMT_VERT.FMTLNV
	 */
	if (params->frm_fmt == CCDC_FRMFMT_PROGRESSIVE)
		val = (((params->win.height - 1) & CCDC_VP_OUT_VERT_NUM_MASK))
		    << CCDC_VP_OUT_VERT_NUM_SHIFT;
	else
		val =
		    ((((params->win.height >> CCDC_INTERLACED_HEIGHT_SHIFT) -
		     1) & CCDC_VP_OUT_VERT_NUM_MASK)) <<
		    CCDC_VP_OUT_VERT_NUM_SHIFT;

	val |= ((((params->win.width))) & CCDC_VP_OUT_HORZ_NUM_MASK)
	    << CCDC_VP_OUT_HORZ_NUM_SHIFT;
	val |= (params->win.left) & CCDC_VP_OUT_HORZ_ST_MASK;
	FUNC8(val, CCDC_VP_OUT);

	FUNC7(dev, "\nWriting 0x%x to VP_OUT...\n", val);
	FUNC8(syn_mode, CCDC_SYN_MODE);
	FUNC7(dev, "\nWriting 0x%x to SYN_MODE...\n", syn_mode);

	FUNC5();
	FUNC7(dev, "\nend of ccdc_config_raw...");
	FUNC3();
}