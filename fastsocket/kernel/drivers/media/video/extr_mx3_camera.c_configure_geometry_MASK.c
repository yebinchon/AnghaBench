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
typedef  int u32 ;
struct mx3_camera_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSI_ACT_FRM_SIZE ; 
 int /*<<< orphan*/  CSI_FLASH_STROBE_1 ; 
 int /*<<< orphan*/  CSI_FLASH_STROBE_2 ; 
 int /*<<< orphan*/  CSI_OUT_FRM_CTRL ; 
 int /*<<< orphan*/  CSI_SENS_FRM_SIZE ; 
 int FUNC0 (struct mx3_camera_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mx3_camera_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mx3_camera_dev *mx3_cam,
			       unsigned int width, unsigned int height)
{
	u32 ctrl, width_field, height_field;

	/* Setup frame size - this cannot be changed on-the-fly... */
	width_field = width - 1;
	height_field = height - 1;
	FUNC1(mx3_cam, width_field | (height_field << 16), CSI_SENS_FRM_SIZE);

	FUNC1(mx3_cam, width_field << 16, CSI_FLASH_STROBE_1);
	FUNC1(mx3_cam, (height_field << 16) | 0x22, CSI_FLASH_STROBE_2);

	FUNC1(mx3_cam, width_field | (height_field << 16), CSI_ACT_FRM_SIZE);

	/* ...and position */
	ctrl = FUNC0(mx3_cam, CSI_OUT_FRM_CTRL) & 0xffff0000;
	/* Sensor does the cropping */
	FUNC1(mx3_cam, ctrl | 0 | (0 << 8), CSI_OUT_FRM_CTRL);
}