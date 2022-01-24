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
struct video_device {int /*<<< orphan*/  dev; } ;
struct pwc_device {int features; } ;

/* Variables and functions */
 int FEATURE_MOTOR_PANTILT ; 
 int /*<<< orphan*/  dev_attr_button ; 
 int /*<<< orphan*/  dev_attr_pan_tilt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct pwc_device* FUNC1 (struct video_device*) ; 

__attribute__((used)) static void FUNC2(struct video_device *vdev)
{
	struct pwc_device *pdev = FUNC1(vdev);

	if (pdev->features & FEATURE_MOTOR_PANTILT)
		FUNC0(&vdev->dev, &dev_attr_pan_tilt);
	FUNC0(&vdev->dev, &dev_attr_button);
}