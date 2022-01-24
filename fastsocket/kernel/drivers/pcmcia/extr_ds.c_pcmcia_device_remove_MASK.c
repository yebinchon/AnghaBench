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
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct pcmcia_driver {int /*<<< orphan*/  owner; TYPE_1__ drv; int /*<<< orphan*/  (* remove ) (struct pcmcia_device*) ;} ;
struct pcmcia_device_id {int match_flags; } ;
struct pcmcia_device {scalar_t__ device_no; int _win; scalar_t__ _locked; scalar_t__ _io; scalar_t__ _irq; int /*<<< orphan*/ * dev_node; TYPE_2__* socket; int /*<<< orphan*/  dev; } ;
struct device {int /*<<< orphan*/  driver; } ;
struct TYPE_4__ {scalar_t__ device_count; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int MAX_WIN ; 
 int PCMCIA_DEV_ID_MATCH_DEVICE_NO ; 
 struct pcmcia_device_id* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct pcmcia_device*) ; 
 struct pcmcia_device* FUNC8 (struct device*) ; 
 struct pcmcia_driver* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct device * dev)
{
	struct pcmcia_device *p_dev;
	struct pcmcia_driver *p_drv;
	struct pcmcia_device_id *did;
	int i;

	p_dev = FUNC8(dev);
	p_drv = FUNC9(dev->driver);

	FUNC3(1, dev, "removing device\n");

	/* If we're removing the primary module driving a
	 * pseudo multi-function card, we need to unbind
	 * all devices
	 */
	did = FUNC1(&p_dev->dev);
	if (did && (did->match_flags & PCMCIA_DEV_ID_MATCH_DEVICE_NO) &&
	    (p_dev->socket->device_count != 0) &&
	    (p_dev->device_no == 0))
		FUNC5(p_dev->socket, p_dev);

	/* detach the "instance" */
	if (!p_drv)
		return 0;

	if (p_drv->remove)
	       	p_drv->remove(p_dev);

	p_dev->dev_node = NULL;

	/* check for proper unloading */
	if (p_dev->_irq || p_dev->_io || p_dev->_locked)
		FUNC2(KERN_INFO, dev,
			"pcmcia: driver %s did not release config properly\n",
			p_drv->drv.name);

	for (i = 0; i < MAX_WIN; i++)
		if (p_dev->_win & FUNC0(i))
			FUNC2(KERN_INFO, dev,
			  "pcmcia: driver %s did not release window properly\n",
			   p_drv->drv.name);

	/* references from pcmcia_probe_device */
	FUNC6(p_dev);
	FUNC4(p_drv->owner);

	return 0;
}