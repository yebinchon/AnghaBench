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
typedef  int /*<<< orphan*/  u32 ;
struct soc_camera_host {struct sh_mobile_ceu_dev* priv; } ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct soc_camera_device {int /*<<< orphan*/  user_height; int /*<<< orphan*/  user_width; TYPE_4__ dev; TYPE_3__* current_fmt; TYPE_1__* ops; struct sh_mobile_ceu_cam* host_priv; } ;
struct sh_mobile_ceu_dev {int is_16bit; unsigned long cflcr; scalar_t__ is_interlaced; } ;
struct sh_mobile_ceu_cam {TYPE_2__* camera_fmt; } ;
typedef  int __u32 ;
struct TYPE_7__ {int fourcc; } ;
struct TYPE_6__ {int /*<<< orphan*/  fourcc; } ;
struct TYPE_5__ {unsigned long (* query_bus_param ) (struct soc_camera_device*) ;int (* set_bus_param ) (struct soc_camera_device*,unsigned long) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CAIFR ; 
 int /*<<< orphan*/  CAMCR ; 
 int /*<<< orphan*/  CAPCR ; 
 int /*<<< orphan*/  CDOCR ; 
 int /*<<< orphan*/  CFLCR ; 
 int /*<<< orphan*/  CFWCR ; 
 int /*<<< orphan*/  CRCMPR ; 
 int /*<<< orphan*/  CRCNTR ; 
 int EINVAL ; 
#define  SOCAM_DATAWIDTH_16 137 
#define  SOCAM_DATAWIDTH_8 136 
 unsigned long SOCAM_DATAWIDTH_MASK ; 
 unsigned long SOCAM_HSYNC_ACTIVE_LOW ; 
 unsigned long SOCAM_VSYNC_ACTIVE_LOW ; 
#define  V4L2_PIX_FMT_NV12 135 
#define  V4L2_PIX_FMT_NV16 134 
#define  V4L2_PIX_FMT_NV21 133 
#define  V4L2_PIX_FMT_NV61 132 
#define  V4L2_PIX_FMT_UYVY 131 
#define  V4L2_PIX_FMT_VYUY 130 
#define  V4L2_PIX_FMT_YUYV 129 
#define  V4L2_PIX_FMT_YVYU 128 
 int /*<<< orphan*/  FUNC1 (struct sh_mobile_ceu_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_mobile_ceu_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_mobile_ceu_dev*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sh_mobile_ceu_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct soc_camera_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC9 (struct soc_camera_device*) ; 
 int FUNC10 (struct soc_camera_device*,unsigned long) ; 
 struct soc_camera_host* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct soc_camera_device *icd,
				       __u32 pixfmt)
{
	struct soc_camera_host *ici = FUNC11(icd->dev.parent);
	struct sh_mobile_ceu_dev *pcdev = ici->priv;
	int ret;
	unsigned long camera_flags, common_flags, value;
	int yuv_lineskip;
	struct sh_mobile_ceu_cam *cam = icd->host_priv;
	u32 capsr = FUNC2(pcdev);

	camera_flags = icd->ops->query_bus_param(icd);
	common_flags = FUNC8(camera_flags,
						       FUNC5(pcdev));
	if (!common_flags)
		return -EINVAL;

	ret = icd->ops->set_bus_param(icd, common_flags);
	if (ret < 0)
		return ret;

	switch (common_flags & SOCAM_DATAWIDTH_MASK) {
	case SOCAM_DATAWIDTH_8:
		pcdev->is_16bit = 0;
		break;
	case SOCAM_DATAWIDTH_16:
		pcdev->is_16bit = 1;
		break;
	default:
		return -EINVAL;
	}

	FUNC3(pcdev, CRCNTR, 0);
	FUNC3(pcdev, CRCMPR, 0);

	value = 0x00000010; /* data fetch by default */
	yuv_lineskip = 0;

	switch (icd->current_fmt->fourcc) {
	case V4L2_PIX_FMT_NV12:
	case V4L2_PIX_FMT_NV21:
		yuv_lineskip = 1; /* skip for NV12/21, no skip for NV16/61 */
		/* fall-through */
	case V4L2_PIX_FMT_NV16:
	case V4L2_PIX_FMT_NV61:
		switch (cam->camera_fmt->fourcc) {
		case V4L2_PIX_FMT_UYVY:
			value = 0x00000000; /* Cb0, Y0, Cr0, Y1 */
			break;
		case V4L2_PIX_FMT_VYUY:
			value = 0x00000100; /* Cr0, Y0, Cb0, Y1 */
			break;
		case V4L2_PIX_FMT_YUYV:
			value = 0x00000200; /* Y0, Cb0, Y1, Cr0 */
			break;
		case V4L2_PIX_FMT_YVYU:
			value = 0x00000300; /* Y0, Cr0, Y1, Cb0 */
			break;
		default:
			FUNC0();
		}
	}

	if (icd->current_fmt->fourcc == V4L2_PIX_FMT_NV21 ||
	    icd->current_fmt->fourcc == V4L2_PIX_FMT_NV61)
		value ^= 0x00000100; /* swap U, V to change from NV1x->NVx1 */

	value |= common_flags & SOCAM_VSYNC_ACTIVE_LOW ? 1 << 1 : 0;
	value |= common_flags & SOCAM_HSYNC_ACTIVE_LOW ? 1 << 0 : 0;
	value |= pcdev->is_16bit ? 1 << 12 : 0;
	FUNC3(pcdev, CAMCR, value);

	FUNC3(pcdev, CAPCR, 0x00300000);
	FUNC3(pcdev, CAIFR, pcdev->is_interlaced ? 0x101 : 0);

	FUNC7(icd, icd->user_width, icd->user_height);
	FUNC6(1);

	FUNC3(pcdev, CFLCR, pcdev->cflcr);

	/* A few words about byte order (observed in Big Endian mode)
	 *
	 * In data fetch mode bytes are received in chunks of 8 bytes.
	 * D0, D1, D2, D3, D4, D5, D6, D7 (D0 received first)
	 *
	 * The data is however by default written to memory in reverse order:
	 * D7, D6, D5, D4, D3, D2, D1, D0 (D7 written to lowest byte)
	 *
	 * The lowest three bits of CDOCR allows us to do swapping,
	 * using 7 we swap the data bytes to match the incoming order:
	 * D0, D1, D2, D3, D4, D5, D6, D7
	 */
	value = 0x00000017;
	if (yuv_lineskip)
		value &= ~0x00000010; /* convert 4:2:2 -> 4:2:0 */

	FUNC3(pcdev, CDOCR, value);
	FUNC3(pcdev, CFWCR, 0); /* keep "datafetch firewall" disabled */

	FUNC4(icd->dev.parent, "S_FMT successful for %c%c%c%c %ux%u\n",
		pixfmt & 0xff, (pixfmt >> 8) & 0xff,
		(pixfmt >> 16) & 0xff, (pixfmt >> 24) & 0xff,
		icd->user_width, icd->user_height);

	FUNC1(pcdev, capsr);

	/* not in bundle mode: skip CBDSR, CDAYR2, CDACR2, CDBYR2, CDBCR2 */
	return 0;
}