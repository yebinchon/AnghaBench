#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ AssignedIRQ; } ;
struct pcmcia_device {TYPE_2__* dev_node; int /*<<< orphan*/  conf; TYPE_4__ irq; TYPE_3__* priv; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev_name; } ;
struct TYPE_8__ {TYPE_2__ node; TYPE_1__* hdev; } ;
typedef  TYPE_3__ btuart_info_t ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  RequestConfiguration ; 
 int /*<<< orphan*/  RequestIO ; 
 int /*<<< orphan*/  RequestIRQ ; 
 int /*<<< orphan*/  btuart_check_config ; 
 int /*<<< orphan*/  btuart_check_config_notpicky ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcmcia_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_device*,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (struct pcmcia_device*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct pcmcia_device*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct pcmcia_device *link)
{
	btuart_info_t *info = link->priv;
	int i;
	int try;

	/* First pass: look for a config entry that looks normal.
	   Two tries: without IO aliases, then with aliases */
	for (try = 0; try < 2; try++)
		if (!FUNC4(link, btuart_check_config, &try))
			goto found_port;

	/* Second pass: try to find an entry that isn't picky about
	   its base address, then try to grab any standard serial port
	   address, and finally try to get any free port. */
	if (!FUNC4(link, btuart_check_config_notpicky, NULL))
		goto found_port;

	FUNC0("No usable port range found");
	FUNC3(link, RequestIO, -ENODEV);
	goto failed;

found_port:
	i = FUNC6(link, &link->irq);
	if (i != 0) {
		FUNC3(link, RequestIRQ, i);
		link->irq.AssignedIRQ = 0;
	}

	i = FUNC5(link, &link->conf);
	if (i != 0) {
		FUNC3(link, RequestConfiguration, i);
		goto failed;
	}

	if (FUNC1(info) != 0)
		goto failed;

	FUNC7(info->node.dev_name, info->hdev->name);
	link->dev_node = &info->node;

	return 0;

failed:
	FUNC2(link);
	return -ENODEV;
}