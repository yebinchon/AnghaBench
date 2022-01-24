#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pcmcia_socket {int device_count; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct pcmcia_driver {int (* probe ) (struct pcmcia_device*) ;int /*<<< orphan*/  owner; TYPE_2__ drv; } ;
struct pcmcia_device_id {int match_flags; } ;
struct TYPE_5__ {scalar_t__ Present; scalar_t__ ConfigBase; } ;
struct pcmcia_device {scalar_t__ device_no; struct pcmcia_socket* socket; TYPE_1__ conf; int /*<<< orphan*/  func; int /*<<< orphan*/  function_config; int /*<<< orphan*/  dev; } ;
struct device {int /*<<< orphan*/  driver; } ;
struct TYPE_7__ {scalar_t__* rmask; scalar_t__ base; } ;
typedef  TYPE_3__ cistpl_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  CISTPL_CONFIG ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int PCMCIA_DEV_ID_MATCH_DEVICE_NO ; 
 struct pcmcia_device_id* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,int /*<<< orphan*/ ,...) ; 
 struct device* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pcmcia_socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct pcmcia_socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int FUNC8 (struct pcmcia_device*) ; 
 struct pcmcia_device* FUNC9 (struct device*) ; 
 struct pcmcia_driver* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct device * dev)
{
	struct pcmcia_device *p_dev;
	struct pcmcia_driver *p_drv;
	struct pcmcia_device_id *did;
	struct pcmcia_socket *s;
	cistpl_config_t cis_config;
	int ret = 0;

	dev = FUNC3(dev);
	if (!dev)
		return -ENODEV;

	p_dev = FUNC9(dev);
	p_drv = FUNC10(dev->driver);
	s = p_dev->socket;

	/* The PCMCIA code passes the match data in via dev_set_drvdata(dev)
	 * which is an ugly hack. Once the driver probe is called it may
	 * and often will overwrite the match data so we must save it first
	 *
	 * handle pseudo multifunction devices:
	 * there are at most two pseudo multifunction devices.
	 * if we're matching against the first, schedule a
	 * call which will then check whether there are two
	 * pseudo devices, and if not, add the second one.
	 */
	did = FUNC0(&p_dev->dev);

	FUNC2(1, dev, "trying to bind to %s\n", p_drv->drv.name);

	if ((!p_drv->probe) || (!p_dev->function_config) ||
	    (!FUNC11(p_drv->owner))) {
		ret = -EINVAL;
		goto put_dev;
	}

	/* set up some more device information */
	ret = FUNC5(p_dev->socket, p_dev->func, CISTPL_CONFIG,
				&cis_config);
	if (!ret) {
		p_dev->conf.ConfigBase = cis_config.base;
		p_dev->conf.Present = cis_config.rmask[0];
	} else {
		FUNC1(KERN_INFO, dev,
			   "pcmcia: could not parse base and rmask0 of CIS\n");
		p_dev->conf.ConfigBase = 0;
		p_dev->conf.Present = 0;
	}

	ret = p_drv->probe(p_dev);
	if (ret) {
		FUNC2(1, dev, "binding to %s failed with %d\n",
			   p_drv->drv.name, ret);
		goto put_module;
	}

	if (did && (did->match_flags & PCMCIA_DEV_ID_MATCH_DEVICE_NO) &&
	    (p_dev->socket->device_count == 1) && (p_dev->device_no == 0))
		FUNC6(p_dev->socket, 0);

put_module:
	if (ret)
		FUNC4(p_drv->owner);
put_dev:
	if (ret)
		FUNC7(dev);
	return (ret);
}