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
struct v4l2_capability {int capabilities; int /*<<< orphan*/  version; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ tuner_type; int /*<<< orphan*/  name; } ;
struct cx88_core {TYPE_1__ board; } ;
struct cx8802_fh {struct cx8802_dev* dev; } ;
struct cx8802_dev {int /*<<< orphan*/  pci; struct cx88_core* core; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX88_VERSION_CODE ; 
 scalar_t__ UNSET ; 
 int V4L2_CAP_READWRITE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_TUNER ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4 (struct file *file, void  *priv,
					struct v4l2_capability *cap)
{
	struct cx8802_dev *dev  = ((struct cx8802_fh *)priv)->dev;
	struct cx88_core  *core = dev->core;

	FUNC2(cap->driver, "cx88_blackbird");
	FUNC3(cap->card, core->board.name, sizeof(cap->card));
	FUNC1(cap->bus_info,"PCI:%s",FUNC0(dev->pci));
	cap->version = CX88_VERSION_CODE;
	cap->capabilities =
		V4L2_CAP_VIDEO_CAPTURE |
		V4L2_CAP_READWRITE     |
		V4L2_CAP_STREAMING;
	if (UNSET != core->board.tuner_type)
		cap->capabilities |= V4L2_CAP_TUNER;
	return 0;
}