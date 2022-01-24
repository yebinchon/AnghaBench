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
struct v4l2_capability {int capabilities; int /*<<< orphan*/  version; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_CARD ; 
 int /*<<< orphan*/  DRIVER_KERNEL_VERSION ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int V4L2_CAP_HW_FREQ_SEEK ; 
 int V4L2_CAP_RADIO ; 
 int V4L2_CAP_TUNER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC1(struct file *file, void *priv,
		struct v4l2_capability *capability)
{
	FUNC0(capability->driver, DRIVER_NAME, sizeof(capability->driver));
	FUNC0(capability->card, DRIVER_CARD, sizeof(capability->card));
	capability->version = DRIVER_KERNEL_VERSION;
	capability->capabilities = V4L2_CAP_HW_FREQ_SEEK |
		V4L2_CAP_TUNER | V4L2_CAP_RADIO;

	return 0;
}