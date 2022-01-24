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
struct pcmciamtd_dev {struct pcmcia_device* p_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  IntType; scalar_t__ Attributes; } ;
struct pcmcia_device {TYPE_1__ conf; struct pcmciamtd_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct pcmciamtd_dev*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INT_MEMORY ; 
 struct pcmciamtd_dev* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pcmcia_device*) ; 

__attribute__((used)) static int FUNC3(struct pcmcia_device *link)
{
	struct pcmciamtd_dev *dev;

	/* Create new memory card device */
	dev = FUNC1(sizeof(*dev), GFP_KERNEL);
	if (!dev) return -ENOMEM;
	FUNC0(1, "dev=0x%p", dev);

	dev->p_dev = link;
	link->priv = dev;

	link->conf.Attributes = 0;
	link->conf.IntType = INT_MEMORY;

	return FUNC2(link);
}