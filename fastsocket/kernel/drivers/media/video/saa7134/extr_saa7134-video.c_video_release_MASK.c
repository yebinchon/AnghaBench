#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct saa7134_fh* read_buf; } ;
struct saa7134_fh {int /*<<< orphan*/  prio; int /*<<< orphan*/  pt_vbi; int /*<<< orphan*/  pt_cap; TYPE_1__ vbi; TYPE_1__ cap; scalar_t__ radio; struct saa7134_dev* dev; } ;
struct saa7134_dev {int /*<<< orphan*/  prio; int /*<<< orphan*/  pci; int /*<<< orphan*/  slock; } ;
struct saa6588_command {int dummy; } ;
struct file {struct saa7134_fh* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESOURCE_OVERLAY ; 
 int /*<<< orphan*/  RESOURCE_VBI ; 
 int /*<<< orphan*/  RESOURCE_VIDEO ; 
 int /*<<< orphan*/  SAA6588_CMD_CLOSE ; 
 int /*<<< orphan*/  SAA7134_OFMT_DATA_A ; 
 int /*<<< orphan*/  SAA7134_OFMT_DATA_B ; 
 int /*<<< orphan*/  SAA7134_OFMT_VIDEO_A ; 
 int /*<<< orphan*/  SAA7134_OFMT_VIDEO_B ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct saa7134_fh*) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  ioctl ; 
 int /*<<< orphan*/  FUNC1 (struct saa7134_fh*) ; 
 scalar_t__ FUNC2 (struct saa7134_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct saa7134_dev*,struct saa7134_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_power ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct saa7134_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct saa7134_dev*,struct saa7134_fh*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(struct file *file)
{
	struct saa7134_fh  *fh  = file->private_data;
	struct saa7134_dev *dev = fh->dev;
	struct saa6588_command cmd;
	unsigned long flags;

	/* turn off overlay */
	if (FUNC2(fh, RESOURCE_OVERLAY)) {
		FUNC7(&dev->slock,flags);
		FUNC9(dev,fh);
		FUNC8(&dev->slock,flags);
		FUNC3(dev,fh,RESOURCE_OVERLAY);
	}

	/* stop video capture */
	if (FUNC2(fh, RESOURCE_VIDEO)) {
		FUNC13(&fh->cap);
		FUNC3(dev,fh,RESOURCE_VIDEO);
	}
	if (fh->cap.read_buf) {
		FUNC0(&fh->cap,fh->cap.read_buf);
		FUNC1(fh->cap.read_buf);
	}

	/* stop vbi capture */
	if (FUNC2(fh, RESOURCE_VBI)) {
		FUNC12(&fh->vbi);
		FUNC3(dev,fh,RESOURCE_VBI);
	}

	/* ts-capture will not work in planar mode, so turn it off Hac: 04.05*/
	FUNC5(SAA7134_OFMT_VIDEO_A, 0x1f, 0);
	FUNC5(SAA7134_OFMT_VIDEO_B, 0x1f, 0);
	FUNC5(SAA7134_OFMT_DATA_A, 0x1f, 0);
	FUNC5(SAA7134_OFMT_DATA_B, 0x1f, 0);

	FUNC6(dev, core, s_power, 0);
	if (fh->radio)
		FUNC6(dev, core, ioctl, SAA6588_CMD_CLOSE, &cmd);

	/* free stuff */
	FUNC11(&fh->cap);
	FUNC11(&fh->vbi);
	FUNC4(dev->pci,&fh->pt_cap);
	FUNC4(dev->pci,&fh->pt_vbi);

	FUNC10(&dev->prio, fh->prio);
	file->private_data = NULL;
	FUNC1(fh);
	return 0;
}