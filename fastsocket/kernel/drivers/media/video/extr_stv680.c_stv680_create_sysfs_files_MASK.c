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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  dev_attr_decoding_errors ; 
 int /*<<< orphan*/  dev_attr_frames_read ; 
 int /*<<< orphan*/  dev_attr_frames_total ; 
 int /*<<< orphan*/  dev_attr_in_use ; 
 int /*<<< orphan*/  dev_attr_model ; 
 int /*<<< orphan*/  dev_attr_packets_dropped ; 
 int /*<<< orphan*/  dev_attr_palette ; 
 int /*<<< orphan*/  dev_attr_streaming ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct video_device *vdev)
{
	int rc;

	rc = FUNC1(&vdev->dev, &dev_attr_model);
	if (rc) goto err;
	rc = FUNC1(&vdev->dev, &dev_attr_in_use);
	if (rc) goto err_model;
	rc = FUNC1(&vdev->dev, &dev_attr_streaming);
	if (rc) goto err_inuse;
	rc = FUNC1(&vdev->dev, &dev_attr_palette);
	if (rc) goto err_stream;
	rc = FUNC1(&vdev->dev, &dev_attr_frames_total);
	if (rc) goto err_pal;
	rc = FUNC1(&vdev->dev, &dev_attr_frames_read);
	if (rc) goto err_framtot;
	rc = FUNC1(&vdev->dev, &dev_attr_packets_dropped);
	if (rc) goto err_framread;
	rc = FUNC1(&vdev->dev, &dev_attr_decoding_errors);
	if (rc) goto err_dropped;

	return 0;

err_dropped:
	FUNC2(&vdev->dev, &dev_attr_packets_dropped);
err_framread:
	FUNC2(&vdev->dev, &dev_attr_frames_read);
err_framtot:
	FUNC2(&vdev->dev, &dev_attr_frames_total);
err_pal:
	FUNC2(&vdev->dev, &dev_attr_palette);
err_stream:
	FUNC2(&vdev->dev, &dev_attr_streaming);
err_inuse:
	FUNC2(&vdev->dev, &dev_attr_in_use);
err_model:
	FUNC2(&vdev->dev, &dev_attr_model);
err:
	FUNC0(0, "STV(e): Could not create sysfs files");
	return rc;
}