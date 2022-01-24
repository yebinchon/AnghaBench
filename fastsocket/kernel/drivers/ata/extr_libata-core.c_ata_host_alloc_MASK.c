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
struct device {int dummy; } ;
struct ata_port {int port_no; } ;
struct ata_host {int n_ports; struct ata_port** ports; struct device* dev; int /*<<< orphan*/  eh_mutex; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ata_host_release ; 
 struct ata_port* FUNC1 (struct ata_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct ata_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct ata_host*) ; 
 struct ata_host* FUNC4 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

struct ata_host *FUNC10(struct device *dev, int max_ports)
{
	struct ata_host *host;
	size_t sz;
	int i;

	FUNC0("ENTER\n");

	if (!FUNC5(dev, NULL, GFP_KERNEL))
		return NULL;

	/* alloc a container for our list of ATA ports (buses) */
	sz = sizeof(struct ata_host) + (max_ports + 1) * sizeof(void *);
	/* alloc a container for our list of ATA ports (buses) */
	host = FUNC4(ata_host_release, sz, GFP_KERNEL);
	if (!host)
		goto err_out;

	FUNC3(dev, host);
	FUNC2(dev, host);

	FUNC9(&host->lock);
	FUNC8(&host->eh_mutex);
	host->dev = dev;
	host->n_ports = max_ports;

	/* allocate ports bound to this host */
	for (i = 0; i < max_ports; i++) {
		struct ata_port *ap;

		ap = FUNC1(host);
		if (!ap)
			goto err_out;

		ap->port_no = i;
		host->ports[i] = ap;
	}

	FUNC7(dev, NULL);
	return host;

 err_out:
	FUNC6(dev, NULL);
	return NULL;
}