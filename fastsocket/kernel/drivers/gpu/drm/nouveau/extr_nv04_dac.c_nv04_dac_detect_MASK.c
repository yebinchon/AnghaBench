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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct nouveau_drm {int dummy; } ;
struct nouveau_device {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct drm_connector {int dummy; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_SAMPLE_PAIRS ; 
 int FUNC1 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NV_CIO_CRE_PIXEL_FORMAT ; 
 int /*<<< orphan*/  NV_CIO_CRE_PIXEL_INDEX ; 
 int /*<<< orphan*/  NV_CIO_CRE_RPC1_INDEX ; 
 int /*<<< orphan*/  NV_CIO_CR_MODE_INDEX ; 
 int /*<<< orphan*/  FUNC8 (struct nouveau_drm*,char*) ; 
 int /*<<< orphan*/  NV_PRAMDAC_GENERAL_CONTROL ; 
 int NV_PRAMDAC_GENERAL_CONTROL_BPC_8BITS ; 
 int NV_PRAMDAC_GENERAL_CONTROL_PIXMIX_ON ; 
 int NV_PRAMDAC_GENERAL_CONTROL_TERMINATION_75OHM ; 
 int /*<<< orphan*/  NV_PRAMDAC_TEST_CONTROL ; 
 int NV_PRAMDAC_TEST_CONTROL_PWRDWN_DAC_OFF ; 
 int /*<<< orphan*/  NV_PRMDIO_PALETTE_DATA ; 
 int /*<<< orphan*/  NV_PRMDIO_PIXEL_MASK ; 
 int /*<<< orphan*/  NV_PRMDIO_READ_MODE_ADDRESS ; 
 int /*<<< orphan*/  NV_PRMDIO_WRITE_MODE_ADDRESS ; 
 int /*<<< orphan*/  NV_VIO_SR_CLOCK_INDEX ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct nouveau_device* FUNC10 (struct drm_device*) ; 
 struct nouveau_drm* FUNC11 (struct drm_device*) ; 
 int FUNC12 (struct nouveau_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct nouveau_device*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (struct drm_device*,int*) ; 

__attribute__((used)) static enum drm_connector_status FUNC16(struct drm_encoder *encoder,
						 struct drm_connector *connector)
{
	struct drm_device *dev = encoder->dev;
	struct nouveau_device *device = FUNC10(dev);
	struct nouveau_drm *drm = FUNC11(dev);
	uint8_t saved_seq1, saved_pi, saved_rpc1, saved_cr_mode;
	uint8_t saved_palette0[3], saved_palette_mask;
	uint32_t saved_rtest_ctrl, saved_rgen_ctrl;
	int i;
	uint8_t blue;
	bool sense = true;

	/*
	 * for this detection to work, there needs to be a mode set up on the
	 * CRTC.  this is presumed to be the case
	 */

	if (FUNC13(dev))
		/* only implemented for head A for now */
		FUNC4(dev, 0);

	saved_cr_mode = FUNC2(dev, 0, NV_CIO_CR_MODE_INDEX);
	FUNC6(dev, 0, NV_CIO_CR_MODE_INDEX, saved_cr_mode | 0x80);

	saved_seq1 = FUNC3(dev, 0, NV_VIO_SR_CLOCK_INDEX);
	FUNC7(dev, 0, NV_VIO_SR_CLOCK_INDEX, saved_seq1 & ~0x20);

	saved_rtest_ctrl = FUNC1(dev, 0, NV_PRAMDAC_TEST_CONTROL);
	FUNC5(dev, 0, NV_PRAMDAC_TEST_CONTROL,
		      saved_rtest_ctrl & ~NV_PRAMDAC_TEST_CONTROL_PWRDWN_DAC_OFF);

	FUNC9(10);

	saved_pi = FUNC2(dev, 0, NV_CIO_CRE_PIXEL_INDEX);
	FUNC6(dev, 0, NV_CIO_CRE_PIXEL_INDEX,
		       saved_pi & ~(0x80 | FUNC0(NV_CIO_CRE_PIXEL_FORMAT)));
	saved_rpc1 = FUNC2(dev, 0, NV_CIO_CRE_RPC1_INDEX);
	FUNC6(dev, 0, NV_CIO_CRE_RPC1_INDEX, saved_rpc1 & ~0xc0);

	FUNC14(device, NV_PRMDIO_READ_MODE_ADDRESS, 0x0);
	for (i = 0; i < 3; i++)
		saved_palette0[i] = FUNC12(device, NV_PRMDIO_PALETTE_DATA);
	saved_palette_mask = FUNC12(device, NV_PRMDIO_PIXEL_MASK);
	FUNC14(device, NV_PRMDIO_PIXEL_MASK, 0);

	saved_rgen_ctrl = FUNC1(dev, 0, NV_PRAMDAC_GENERAL_CONTROL);
	FUNC5(dev, 0, NV_PRAMDAC_GENERAL_CONTROL,
		      (saved_rgen_ctrl & ~(NV_PRAMDAC_GENERAL_CONTROL_BPC_8BITS |
					   NV_PRAMDAC_GENERAL_CONTROL_TERMINATION_75OHM)) |
		      NV_PRAMDAC_GENERAL_CONTROL_PIXMIX_ON);

	blue = 8;	/* start of test range */

	do {
		bool sense_pair[2];

		FUNC14(device, NV_PRMDIO_WRITE_MODE_ADDRESS, 0);
		FUNC14(device, NV_PRMDIO_PALETTE_DATA, 0);
		FUNC14(device, NV_PRMDIO_PALETTE_DATA, 0);
		/* testing blue won't find monochrome monitors.  I don't care */
		FUNC14(device, NV_PRMDIO_PALETTE_DATA, blue);

		i = 0;
		/* take sample pairs until both samples in the pair agree */
		do {
			if (FUNC15(dev, sense_pair))
				goto out;
		} while ((sense_pair[0] != sense_pair[1]) &&
							++i < MAX_SAMPLE_PAIRS);

		if (i == MAX_SAMPLE_PAIRS)
			/* too much oscillation defaults to LO */
			sense = false;
		else
			sense = sense_pair[0];

	/*
	 * if sense goes LO before blue ramps to 0x18, monitor is not connected.
	 * ergo, if blue gets to 0x18, monitor must be connected
	 */
	} while (++blue < 0x18 && sense);

out:
	FUNC14(device, NV_PRMDIO_PIXEL_MASK, saved_palette_mask);
	FUNC5(dev, 0, NV_PRAMDAC_GENERAL_CONTROL, saved_rgen_ctrl);
	FUNC14(device, NV_PRMDIO_WRITE_MODE_ADDRESS, 0);
	for (i = 0; i < 3; i++)
		FUNC14(device, NV_PRMDIO_PALETTE_DATA, saved_palette0[i]);
	FUNC5(dev, 0, NV_PRAMDAC_TEST_CONTROL, saved_rtest_ctrl);
	FUNC6(dev, 0, NV_CIO_CRE_PIXEL_INDEX, saved_pi);
	FUNC6(dev, 0, NV_CIO_CRE_RPC1_INDEX, saved_rpc1);
	FUNC7(dev, 0, NV_VIO_SR_CLOCK_INDEX, saved_seq1);
	FUNC6(dev, 0, NV_CIO_CR_MODE_INDEX, saved_cr_mode);

	if (blue == 0x18) {
		FUNC8(drm, "Load detected on head A\n");
		return connector_status_connected;
	}

	return connector_status_disconnected;
}