#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ AssignedIRQ; } ;
struct TYPE_7__ {int NumPorts1; } ;
struct pcmcia_device {TYPE_3__* dev_node; int /*<<< orphan*/  conf; TYPE_5__ irq; TYPE_1__ io; TYPE_4__* priv; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev_name; } ;
struct TYPE_10__ {TYPE_3__ node; TYPE_2__* hdev; } ;
typedef  TYPE_4__ dtl1_info_t ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  RequestConfiguration ; 
 int /*<<< orphan*/  RequestIRQ ; 
 int /*<<< orphan*/  FUNC0 (struct pcmcia_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  dtl1_confcheck ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_device*) ; 
 scalar_t__ FUNC3 (struct pcmcia_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct pcmcia_device*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct pcmcia_device*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct pcmcia_device *link)
{
	dtl1_info_t *info = link->priv;
	int i;

	/* Look for a generic full-sized window */
	link->io.NumPorts1 = 8;
	if (FUNC3(link, dtl1_confcheck, NULL) < 0)
		goto failed;

	i = FUNC5(link, &link->irq);
	if (i != 0) {
		FUNC0(link, RequestIRQ, i);
		link->irq.AssignedIRQ = 0;
	}

	i = FUNC4(link, &link->conf);
	if (i != 0) {
		FUNC0(link, RequestConfiguration, i);
		goto failed;
	}

	if (FUNC1(info) != 0)
		goto failed;

	FUNC6(info->node.dev_name, info->hdev->name);
	link->dev_node = &info->node;

	return 0;

failed:
	FUNC2(link);
	return -ENODEV;
}