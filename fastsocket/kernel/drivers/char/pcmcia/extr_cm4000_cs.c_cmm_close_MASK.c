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
struct pcmcia_device {scalar_t__ open; struct cm4000_dev* priv; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct cm4000_dev {int /*<<< orphan*/  devq; } ;

/* Variables and functions */
 int CM4000_MAX_DEV ; 
 int /*<<< orphan*/  FUNC0 (int,struct cm4000_dev*,char*,...) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (struct cm4000_dev*) ; 
 struct pcmcia_device** dev_table ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct cm4000_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *filp)
{
	struct cm4000_dev *dev;
	struct pcmcia_device *link;
	int minor = FUNC3(inode);

	if (minor >= CM4000_MAX_DEV)
		return -ENODEV;

	link = dev_table[minor];
	if (link == NULL)
		return -ENODEV;

	dev = link->priv;

	FUNC0(2, dev, "-> cmm_close(maj/min=%d.%d)\n",
	       FUNC2(inode), minor);

	FUNC4(dev);

	FUNC1(dev);

	link->open = 0;		/* only one open per device */
	FUNC5(&dev->devq);	/* socket removed? */

	FUNC0(2, dev, "cmm_close\n");
	return 0;
}