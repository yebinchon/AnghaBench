#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_capability {int capabilities; int /*<<< orphan*/  version; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct file {struct cx23885_fh* private_data; } ;
struct cx23885_tsport {TYPE_1__* dev; } ;
struct cx23885_fh {struct cx23885_dev* dev; } ;
struct cx23885_dev {scalar_t__ tuner_type; int /*<<< orphan*/  pci; int /*<<< orphan*/  name; struct cx23885_tsport ts1; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {size_t board; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX23885_VERSION_CODE ; 
 scalar_t__ UNSET ; 
 int V4L2_CAP_READWRITE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_TUNER ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 TYPE_2__* cx23885_boards ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct file *file, void  *priv,
				struct v4l2_capability *cap)
{
	struct cx23885_fh  *fh  = file->private_data;
	struct cx23885_dev *dev = fh->dev;
	struct cx23885_tsport  *tsport = &dev->ts1;

	FUNC2(cap->driver, dev->name, sizeof(cap->driver));
	FUNC2(cap->card, cx23885_boards[tsport->dev->board].name,
		sizeof(cap->card));
	FUNC1(cap->bus_info, "PCI:%s", FUNC0(dev->pci));
	cap->version = CX23885_VERSION_CODE;
	cap->capabilities =
		V4L2_CAP_VIDEO_CAPTURE |
		V4L2_CAP_READWRITE     |
		V4L2_CAP_STREAMING     |
		0;
	if (UNSET != dev->tuner_type)
		cap->capabilities |= V4L2_CAP_TUNER;

	return 0;
}