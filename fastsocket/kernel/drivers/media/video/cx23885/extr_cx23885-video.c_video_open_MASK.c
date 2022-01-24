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
struct video_device {int vfl_type; } ;
struct file {struct cx23885_fh* private_data; } ;
struct cx23885_fh {int radio; int type; int width; int height; int /*<<< orphan*/  vidq; int /*<<< orphan*/  fmt; struct cx23885_dev* dev; } ;
struct cx23885_dev {int /*<<< orphan*/  slock; TYPE_1__* pci; } ;
struct cx23885_buffer {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int V4L2_BUF_TYPE_VBI_CAPTURE ; 
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_FIELD_INTERLACED ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_BGR24 ; 
#define  VFL_TYPE_GRABBER 130 
#define  VFL_TYPE_RADIO 129 
#define  VFL_TYPE_VBI 128 
 int /*<<< orphan*/  cx23885_video_qops ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct cx23885_fh* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * v4l2_type_names ; 
 struct video_device* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct video_device*) ; 
 struct cx23885_dev* FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,struct cx23885_fh*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct file *file)
{
	struct video_device *vdev = FUNC3(file);
	struct cx23885_dev *dev = FUNC5(file);
	struct cx23885_fh *fh;
	enum v4l2_buf_type type = 0;
	int radio = 0;

	switch (vdev->vfl_type) {
	case VFL_TYPE_GRABBER:
		type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
		break;
	case VFL_TYPE_VBI:
		type = V4L2_BUF_TYPE_VBI_CAPTURE;
		break;
	case VFL_TYPE_RADIO:
		radio = 1;
		break;
	}

	FUNC0(1, "open dev=%s radio=%d type=%s\n",
		FUNC4(vdev), radio, v4l2_type_names[type]);

	/* allocate + initialize per filehandle data */
	fh = FUNC2(sizeof(*fh), GFP_KERNEL);
	if (NULL == fh)
		return -ENOMEM;

	file->private_data = fh;
	fh->dev      = dev;
	fh->radio    = radio;
	fh->type     = type;
	fh->width    = 320;
	fh->height   = 240;
	fh->fmt      = FUNC1(V4L2_PIX_FMT_BGR24);

	FUNC6(&fh->vidq, &cx23885_video_qops,
			    &dev->pci->dev, &dev->slock,
			    V4L2_BUF_TYPE_VIDEO_CAPTURE,
			    V4L2_FIELD_INTERLACED,
			    sizeof(struct cx23885_buffer),
			    fh, NULL);

	FUNC0(1, "post videobuf_queue_init()\n");

	return 0;
}