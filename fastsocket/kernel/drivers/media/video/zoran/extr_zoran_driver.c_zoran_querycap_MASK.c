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
struct zoran_fh {struct zoran* zr; } ;
struct zoran {int /*<<< orphan*/  pci_dev; } ;
struct v4l2_capability {int capabilities; int /*<<< orphan*/  version; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  driver; int /*<<< orphan*/  card; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR_VERSION ; 
 int /*<<< orphan*/  MINOR_VERSION ; 
 int /*<<< orphan*/  RELEASE_VERSION ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int V4L2_CAP_VIDEO_OUTPUT ; 
 int V4L2_CAP_VIDEO_OVERLAY ; 
 char* FUNC1 (struct zoran*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_capability*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *__fh, struct v4l2_capability *cap)
{
	struct zoran_fh *fh = __fh;
	struct zoran *zr = fh->zr;

	FUNC2(cap, 0, sizeof(*cap));
	FUNC5(cap->card, FUNC1(zr), sizeof(cap->card)-1);
	FUNC5(cap->driver, "zoran", sizeof(cap->driver)-1);
	FUNC4(cap->bus_info, sizeof(cap->bus_info), "PCI:%s",
		 FUNC3(zr->pci_dev));
	cap->version = FUNC0(MAJOR_VERSION, MINOR_VERSION,
			   RELEASE_VERSION);
	cap->capabilities = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_CAPTURE |
			    V4L2_CAP_VIDEO_OUTPUT | V4L2_CAP_VIDEO_OVERLAY;
	return 0;
}