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
struct TYPE_2__ {struct ipw_dev* Instance; } ;
struct pcmcia_device {int /*<<< orphan*/ * dev_node; TYPE_1__ irq; struct ipw_dev* priv; } ;
struct ipw_dev {int /*<<< orphan*/  hardware; int /*<<< orphan*/ * nodes; struct pcmcia_device* link; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RegisterClient ; 
 int FUNC0 (struct ipw_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_dev*) ; 
 struct ipw_dev* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pcmcia_device *link)
{
	struct ipw_dev *ipw;
	int ret;

	ipw = FUNC5(sizeof(struct ipw_dev), GFP_KERNEL);
	if (!ipw)
		return -ENOMEM;

	ipw->link = link;
	link->priv = ipw;
	link->irq.Instance = ipw;

	/* Link this device into our device list. */
	link->dev_node = &ipw->nodes[0];

	ipw->hardware = FUNC3();
	if (!ipw->hardware) {
		FUNC4(ipw);
		return -ENOMEM;
	}
	/* RegisterClient will call config_ipwireless */

	ret = FUNC0(ipw);

	if (ret != 0) {
		FUNC1(link, RegisterClient, ret);
		FUNC2(link);
		return ret;
	}

	return 0;
}