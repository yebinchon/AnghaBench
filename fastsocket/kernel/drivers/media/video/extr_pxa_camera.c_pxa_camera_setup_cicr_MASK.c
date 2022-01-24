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
struct v4l2_subdev {int dummy; } ;
struct soc_camera_host {struct pxa_camera_dev* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct soc_camera_device {scalar_t__ user_height; scalar_t__ user_width; TYPE_1__ dev; } ;
struct pxa_camera_dev {int platform_flags; int channels; int mclk_divisor; scalar_t__ base; } ;
typedef  int __u32 ;

/* Variables and functions */
 scalar_t__ CICR0 ; 
 int CICR0_DMAEN ; 
 int CICR0_ENB ; 
 int CICR0_IRQ_MASK ; 
 int CICR0_SIM_MP ; 
 int CICR0_SIM_SP ; 
 int CICR0_SL_CAP_EN ; 
 scalar_t__ CICR1 ; 
 int FUNC0 (int) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int CICR1_TBIT ; 
 int CICR1_YCBCR_F ; 
 scalar_t__ CICR2 ; 
 scalar_t__ CICR3 ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ CICR4 ; 
 int CICR4_HSP ; 
 int CICR4_MCLK_EN ; 
 int CICR4_PCLK_EN ; 
 int CICR4_PCP ; 
 int CICR4_VSP ; 
 int PXA_CAMERA_MASTER ; 
 int PXA_CAMERA_MCLK_EN ; 
 int PXA_CAMERA_PCLK_EN ; 
#define  SOCAM_DATAWIDTH_10 137 
#define  SOCAM_DATAWIDTH_8 136 
#define  SOCAM_DATAWIDTH_9 135 
 unsigned long SOCAM_DATAWIDTH_MASK ; 
 unsigned long SOCAM_HSYNC_ACTIVE_LOW ; 
 unsigned long SOCAM_PCLK_SAMPLE_FALLING ; 
 unsigned long SOCAM_VSYNC_ACTIVE_LOW ; 
#define  V4L2_PIX_FMT_RGB555 134 
#define  V4L2_PIX_FMT_RGB565 133 
#define  V4L2_PIX_FMT_UYVY 132 
#define  V4L2_PIX_FMT_VYUY 131 
#define  V4L2_PIX_FMT_YUV422P 130 
#define  V4L2_PIX_FMT_YUYV 129 
#define  V4L2_PIX_FMT_YVYU 128 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  g_skip_top_lines ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  sensor ; 
 struct v4l2_subdev* FUNC9 (struct soc_camera_device*) ; 
 struct soc_camera_host* FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC12(struct soc_camera_device *icd,
				  unsigned long flags, __u32 pixfmt)
{
	struct soc_camera_host *ici = FUNC10(icd->dev.parent);
	struct pxa_camera_dev *pcdev = ici->priv;
	struct v4l2_subdev *sd = FUNC9(icd);
	unsigned long dw, bpp;
	u32 cicr0, cicr1, cicr2, cicr3, cicr4 = 0, y_skip_top;
	int ret = FUNC11(sd, sensor, g_skip_top_lines, &y_skip_top);

	if (ret < 0)
		y_skip_top = 0;

	/*
	 * Datawidth is now guaranteed to be equal to one of the three values.
	 * We fix bit-per-pixel equal to data-width...
	 */
	switch (flags & SOCAM_DATAWIDTH_MASK) {
	case SOCAM_DATAWIDTH_10:
		dw = 4;
		bpp = 0x40;
		break;
	case SOCAM_DATAWIDTH_9:
		dw = 3;
		bpp = 0x20;
		break;
	default:
		/*
		 * Actually it can only be 8 now,
		 * default is just to silence compiler warnings
		 */
	case SOCAM_DATAWIDTH_8:
		dw = 2;
		bpp = 0;
	}

	if (pcdev->platform_flags & PXA_CAMERA_PCLK_EN)
		cicr4 |= CICR4_PCLK_EN;
	if (pcdev->platform_flags & PXA_CAMERA_MCLK_EN)
		cicr4 |= CICR4_MCLK_EN;
	if (flags & SOCAM_PCLK_SAMPLE_FALLING)
		cicr4 |= CICR4_PCP;
	if (flags & SOCAM_HSYNC_ACTIVE_LOW)
		cicr4 |= CICR4_HSP;
	if (flags & SOCAM_VSYNC_ACTIVE_LOW)
		cicr4 |= CICR4_VSP;

	cicr0 = FUNC6(pcdev->base + CICR0);
	if (cicr0 & CICR0_ENB)
		FUNC7(cicr0 & ~CICR0_ENB, pcdev->base + CICR0);

	cicr1 = FUNC1(icd->user_width - 1) | bpp | dw;

	switch (pixfmt) {
	case V4L2_PIX_FMT_YUV422P:
		pcdev->channels = 3;
		cicr1 |= CICR1_YCBCR_F;
		/*
		 * Normally, pxa bus wants as input UYVY format. We allow all
		 * reorderings of the YUV422 format, as no processing is done,
		 * and the YUV stream is just passed through without any
		 * transformation. Note that UYVY is the only format that
		 * should be used if pxa framebuffer Overlay2 is used.
		 */
	case V4L2_PIX_FMT_UYVY:
	case V4L2_PIX_FMT_VYUY:
	case V4L2_PIX_FMT_YUYV:
	case V4L2_PIX_FMT_YVYU:
		cicr1 |= FUNC0(2);
		break;
	case V4L2_PIX_FMT_RGB555:
		cicr1 |= FUNC3(1) | FUNC2(2) |
			CICR1_TBIT | FUNC0(1);
		break;
	case V4L2_PIX_FMT_RGB565:
		cicr1 |= FUNC0(1) | FUNC3(2);
		break;
	}

	cicr2 = 0;
	cicr3 = FUNC5(icd->user_height - 1) |
		FUNC4(FUNC8((u32)255, y_skip_top));
	cicr4 |= pcdev->mclk_divisor;

	FUNC7(cicr1, pcdev->base + CICR1);
	FUNC7(cicr2, pcdev->base + CICR2);
	FUNC7(cicr3, pcdev->base + CICR3);
	FUNC7(cicr4, pcdev->base + CICR4);

	/* CIF interrupts are not used, only DMA */
	cicr0 = (cicr0 & CICR0_ENB) | (pcdev->platform_flags & PXA_CAMERA_MASTER ?
		CICR0_SIM_MP : (CICR0_SL_CAP_EN | CICR0_SIM_SP));
	cicr0 |= CICR0_DMAEN | CICR0_IRQ_MASK;
	FUNC7(cicr0, pcdev->base + CICR0);
}