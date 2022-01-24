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
struct comedi_device {int minor; } ;
struct comedi_devconfig {int* options; } ;
struct BondedDevice {int minor; int subdev; int nchans; int /*<<< orphan*/  chanid_offset; int /*<<< orphan*/  subdev_type; void* dev; } ;
typedef  int /*<<< orphan*/  file ;
typedef  int /*<<< orphan*/  devs_opened ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  bdev ;
struct TYPE_2__ {int ndevs; int /*<<< orphan*/  nchans; scalar_t__* name; struct BondedDevice** devs; struct BondedDevice** chanIdDevMap; } ;

/* Variables and functions */
 int COMEDI_NDEVCONFOPTS ; 
 int COMEDI_NUM_BOARD_MINORS ; 
 int /*<<< orphan*/  COMEDI_SUBD_DIO ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_BOARD_NAME ; 
 struct BondedDevice** FUNC1 (struct BondedDevice**,int,int) ; 
 int FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (void*,int) ; 
 void* FUNC4 (char*) ; 
 TYPE_1__* devpriv ; 
 struct BondedDevice* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int,...) ; 
 int FUNC8 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,char*,int) ; 

__attribute__((used)) static int FUNC10(struct comedi_device *dev, struct comedi_devconfig *it)
{
	int i;
	void *devs_opened[COMEDI_NUM_BOARD_MINORS];

	FUNC6(devs_opened, 0, sizeof(devs_opened));
	devpriv->name[0] = 0;;
	/* Loop through all comedi devices specified on the command-line,
	   building our device list */
	for (i = 0; i < COMEDI_NDEVCONFOPTS && (!i || it->options[i]); ++i) {
		char file[] = "/dev/comediXXXXXX";
		int minor = it->options[i];
		void *d;
		int sdev = -1, nchans, tmp;
		struct BondedDevice *bdev = NULL;

		if (minor < 0 || minor > COMEDI_NUM_BOARD_MINORS) {
			FUNC0("Minor %d is invalid!\n", minor);
			return 0;
		}
		if (minor == dev->minor) {
			FUNC0("Cannot bond this driver to itself!\n");
			return 0;
		}
		if (devs_opened[minor]) {
			FUNC0("Minor %d specified more than once!\n", minor);
			return 0;
		}

		FUNC7(file, sizeof(file), "/dev/comedi%u", minor);
		file[sizeof(file) - 1] = 0;

		d = devs_opened[minor] = FUNC4(file);

		if (!d) {
			FUNC0("Minor %u could not be opened\n", minor);
			return 0;
		}

		/* Do DIO, as that's all we support now.. */
		while ((sdev = FUNC2(d, COMEDI_SUBD_DIO,
							     sdev + 1)) > -1) {
			nchans = FUNC3(d, sdev);
			if (nchans <= 0) {
				FUNC0("comedi_get_n_channels() returned %d "
				      "on minor %u subdev %d!\n",
				      nchans, minor, sdev);
				return 0;
			}
			bdev = FUNC5(sizeof(*bdev), GFP_KERNEL);
			if (!bdev) {
				FUNC0("Out of memory.\n");
				return 0;
			}
			bdev->dev = d;
			bdev->minor = minor;
			bdev->subdev = sdev;
			bdev->subdev_type = COMEDI_SUBD_DIO;
			bdev->nchans = nchans;
			bdev->chanid_offset = devpriv->nchans;

			/* map channel id's to BondedDevice * pointer.. */
			while (nchans--)
				devpriv->chanIdDevMap[devpriv->nchans++] = bdev;

			/* Now put bdev pointer at end of devpriv->devs array
			 * list.. */

			/* ergh.. ugly.. we need to realloc :(  */
			tmp = devpriv->ndevs * sizeof(bdev);
			devpriv->devs =
			    FUNC1(devpriv->devs,
				    ++devpriv->ndevs * sizeof(bdev), tmp);
			if (!devpriv->devs) {
				FUNC0("Could not allocate memory. "
				      "Out of memory?");
				return 0;
			}

			devpriv->devs[devpriv->ndevs - 1] = bdev;
			{
	/** Append dev:subdev to devpriv->name */
				char buf[20];
				int left =
				    MAX_BOARD_NAME - FUNC8(devpriv->name) - 1;
				FUNC7(buf, sizeof(buf), "%d:%d ", dev->minor,
					 bdev->subdev);
				buf[sizeof(buf) - 1] = 0;
				FUNC9(devpriv->name, buf, left);
			}

		}
	}

	if (!devpriv->nchans) {
		FUNC0("No channels found!\n");
		return 0;
	}

	return 1;
}