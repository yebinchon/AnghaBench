#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int ConfigIndex; } ;
struct TYPE_11__ {scalar_t__ AssignedIRQ; } ;
struct TYPE_12__ {int NumPorts1; int IOAddrLines; int BasePort1; } ;
struct pcmcia_device {TYPE_2__* dev_node; TYPE_6__ conf; TYPE_4__ irq; TYPE_5__ io; TYPE_3__* priv; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev_name; } ;
struct TYPE_10__ {TYPE_2__ node; TYPE_1__* hdev; } ;
typedef  TYPE_3__ bluecard_info_t ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  RequestConfiguration ; 
 int /*<<< orphan*/  RequestIO ; 
 int /*<<< orphan*/  RequestIRQ ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct pcmcia_device*,TYPE_6__*) ; 
 int FUNC4 (struct pcmcia_device*,TYPE_5__*) ; 
 int FUNC5 (struct pcmcia_device*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct pcmcia_device *link)
{
	bluecard_info_t *info = link->priv;
	int i, n;

	link->conf.ConfigIndex = 0x20;
	link->io.NumPorts1 = 64;
	link->io.IOAddrLines = 6;

	for (n = 0; n < 0x400; n += 0x40) {
		link->io.BasePort1 = n ^ 0x300;
		i = FUNC4(link, &link->io);
		if (i == 0)
			break;
	}

	if (i != 0) {
		FUNC2(link, RequestIO, i);
		goto failed;
	}

	i = FUNC5(link, &link->irq);
	if (i != 0) {
		FUNC2(link, RequestIRQ, i);
		link->irq.AssignedIRQ = 0;
	}

	i = FUNC3(link, &link->conf);
	if (i != 0) {
		FUNC2(link, RequestConfiguration, i);
		goto failed;
	}

	if (FUNC0(info) != 0)
		goto failed;

	FUNC6(info->node.dev_name, info->hdev->name);
	link->dev_node = &info->node;

	return 0;

failed:
	FUNC1(link);
	return -ENODEV;
}