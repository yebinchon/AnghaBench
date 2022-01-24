#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_7__ {int /*<<< orphan*/  parent; int /*<<< orphan*/ * class; } ;
struct srp_host {TYPE_2__ dev; int /*<<< orphan*/  port; struct srp_device* srp_dev; int /*<<< orphan*/  released; int /*<<< orphan*/  target_lock; int /*<<< orphan*/  target_list; } ;
struct srp_device {TYPE_1__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  dma_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_add_target ; 
 int /*<<< orphan*/  dev_attr_ibdev ; 
 int /*<<< orphan*/  dev_attr_port ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct srp_host*) ; 
 struct srp_host* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  srp_class ; 

__attribute__((used)) static struct srp_host *FUNC9(struct srp_device *device, u8 port)
{
	struct srp_host *host;

	host = FUNC7(sizeof *host, GFP_KERNEL);
	if (!host)
		return NULL;

	FUNC0(&host->target_list);
	FUNC8(&host->target_lock);
	FUNC5(&host->released);
	host->srp_dev = device;
	host->port = port;

	host->dev.class = &srp_class;
	host->dev.parent = device->dev->dma_device;
	FUNC1(&host->dev, "srp-%s-%d", device->dev->name, port);

	if (FUNC3(&host->dev))
		goto free_host;
	if (FUNC2(&host->dev, &dev_attr_add_target))
		goto err_class;
	if (FUNC2(&host->dev, &dev_attr_ibdev))
		goto err_class;
	if (FUNC2(&host->dev, &dev_attr_port))
		goto err_class;

	return host;

err_class:
	FUNC4(&host->dev);

free_host:
	FUNC6(host);

	return NULL;
}