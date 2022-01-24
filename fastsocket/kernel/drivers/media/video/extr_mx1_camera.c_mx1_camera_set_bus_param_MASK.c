#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct soc_camera_host {struct mx1_camera_dev* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct soc_camera_device {int buswidth; TYPE_3__* ops; TYPE_1__ dev; } ;
struct mx1_camera_dev {scalar_t__ base; TYPE_2__* pdata; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_6__ {unsigned long (* query_bus_param ) (struct soc_camera_device*) ;int (* set_bus_param ) (struct soc_camera_device*,unsigned long) ;} ;
struct TYPE_5__ {int flags; } ;

/* Variables and functions */
 scalar_t__ CSICR1 ; 
 unsigned int CSICR1_DATA_POL ; 
 unsigned int CSICR1_REDGE ; 
 unsigned int CSICR1_SOF_POL ; 
 int /*<<< orphan*/  CSI_BUS_FLAGS ; 
 int EINVAL ; 
 int MX1_CAMERA_DATA_HIGH ; 
 int MX1_CAMERA_PCLK_RISING ; 
 int MX1_CAMERA_VSYNC_HIGH ; 
 unsigned long SOCAM_DATA_ACTIVE_HIGH ; 
 unsigned long SOCAM_DATA_ACTIVE_LOW ; 
 unsigned long SOCAM_PCLK_SAMPLE_FALLING ; 
 unsigned long SOCAM_PCLK_SAMPLE_RISING ; 
 unsigned long SOCAM_VSYNC_ACTIVE_HIGH ; 
 unsigned long SOCAM_VSYNC_ACTIVE_LOW ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 unsigned long FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct soc_camera_device*) ; 
 int FUNC4 (struct soc_camera_device*,unsigned long) ; 
 struct soc_camera_host* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct soc_camera_device *icd, __u32 pixfmt)
{
	struct soc_camera_host *ici = FUNC5(icd->dev.parent);
	struct mx1_camera_dev *pcdev = ici->priv;
	unsigned long camera_flags, common_flags;
	unsigned int csicr1;
	int ret;

	camera_flags = icd->ops->query_bus_param(icd);

	/* MX1 supports only 8bit buswidth */
	common_flags = FUNC2(camera_flags,
							       CSI_BUS_FLAGS);
	if (!common_flags)
		return -EINVAL;

	icd->buswidth = 8;

	/* Make choises, based on platform choice */
	if ((common_flags & SOCAM_VSYNC_ACTIVE_HIGH) &&
		(common_flags & SOCAM_VSYNC_ACTIVE_LOW)) {
			if (!pcdev->pdata ||
			     pcdev->pdata->flags & MX1_CAMERA_VSYNC_HIGH)
				common_flags &= ~SOCAM_VSYNC_ACTIVE_LOW;
			else
				common_flags &= ~SOCAM_VSYNC_ACTIVE_HIGH;
	}

	if ((common_flags & SOCAM_PCLK_SAMPLE_RISING) &&
		(common_flags & SOCAM_PCLK_SAMPLE_FALLING)) {
			if (!pcdev->pdata ||
			     pcdev->pdata->flags & MX1_CAMERA_PCLK_RISING)
				common_flags &= ~SOCAM_PCLK_SAMPLE_FALLING;
			else
				common_flags &= ~SOCAM_PCLK_SAMPLE_RISING;
	}

	if ((common_flags & SOCAM_DATA_ACTIVE_HIGH) &&
		(common_flags & SOCAM_DATA_ACTIVE_LOW)) {
			if (!pcdev->pdata ||
			     pcdev->pdata->flags & MX1_CAMERA_DATA_HIGH)
				common_flags &= ~SOCAM_DATA_ACTIVE_LOW;
			else
				common_flags &= ~SOCAM_DATA_ACTIVE_HIGH;
	}

	ret = icd->ops->set_bus_param(icd, common_flags);
	if (ret < 0)
		return ret;

	csicr1 = FUNC0(pcdev->base + CSICR1);

	if (common_flags & SOCAM_PCLK_SAMPLE_RISING)
		csicr1 |= CSICR1_REDGE;
	if (common_flags & SOCAM_VSYNC_ACTIVE_HIGH)
		csicr1 |= CSICR1_SOF_POL;
	if (common_flags & SOCAM_DATA_ACTIVE_LOW)
		csicr1 |= CSICR1_DATA_POL;

	FUNC1(csicr1, pcdev->base + CSICR1);

	return 0;
}