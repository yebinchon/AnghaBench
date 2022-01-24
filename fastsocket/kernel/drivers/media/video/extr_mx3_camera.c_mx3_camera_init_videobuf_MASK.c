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
struct videobuf_queue {int dummy; } ;
struct soc_camera_host {struct mx3_camera_dev* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct soc_camera_device {TYPE_1__ dev; } ;
struct mx3_camera_dev {int /*<<< orphan*/  lock; } ;
struct mx3_camera_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  mx3_videobuf_ops ; 
 struct soc_camera_host* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct videobuf_queue*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct soc_camera_device*) ; 

__attribute__((used)) static void FUNC2(struct videobuf_queue *q,
				     struct soc_camera_device *icd)
{
	struct soc_camera_host *ici = FUNC0(icd->dev.parent);
	struct mx3_camera_dev *mx3_cam = ici->priv;

	FUNC1(q, &mx3_videobuf_ops, icd->dev.parent,
				       &mx3_cam->lock,
				       V4L2_BUF_TYPE_VIDEO_CAPTURE,
				       V4L2_FIELD_NONE,
				       sizeof(struct mx3_camera_buffer), icd);
}