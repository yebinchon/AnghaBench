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

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_decoding_errors ; 
 int /*<<< orphan*/  dev_attr_frames_read ; 
 int /*<<< orphan*/  dev_attr_frames_total ; 
 int /*<<< orphan*/  dev_attr_in_use ; 
 int /*<<< orphan*/  dev_attr_model ; 
 int /*<<< orphan*/  dev_attr_packets_dropped ; 
 int /*<<< orphan*/  dev_attr_palette ; 
 int /*<<< orphan*/  dev_attr_streaming ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct video_device *vdev)
{
	FUNC0(&vdev->dev, &dev_attr_model);
	FUNC0(&vdev->dev, &dev_attr_in_use);
	FUNC0(&vdev->dev, &dev_attr_streaming);
	FUNC0(&vdev->dev, &dev_attr_palette);
	FUNC0(&vdev->dev, &dev_attr_frames_total);
	FUNC0(&vdev->dev, &dev_attr_frames_read);
	FUNC0(&vdev->dev, &dev_attr_packets_dropped);
	FUNC0(&vdev->dev, &dev_attr_decoding_errors);
}