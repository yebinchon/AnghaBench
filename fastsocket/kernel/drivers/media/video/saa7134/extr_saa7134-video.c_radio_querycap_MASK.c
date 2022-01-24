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
struct v4l2_capability {int /*<<< orphan*/  capabilities; int /*<<< orphan*/  version; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct saa7134_fh {struct saa7134_dev* dev; } ;
struct saa7134_dev {size_t board; int /*<<< orphan*/  pci; } ;
struct file {struct saa7134_fh* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAA7134_VERSION_CODE ; 
 int /*<<< orphan*/  V4L2_CAP_TUNER ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* saa7134_boards ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
					struct v4l2_capability *cap)
{
	struct saa7134_fh *fh = file->private_data;
	struct saa7134_dev *dev = fh->dev;

	FUNC2(cap->driver, "saa7134");
	FUNC3(cap->card, saa7134_boards[dev->board].name, sizeof(cap->card));
	FUNC1(cap->bus_info, "PCI:%s", FUNC0(dev->pci));
	cap->version = SAA7134_VERSION_CODE;
	cap->capabilities = V4L2_CAP_TUNER;
	return 0;
}