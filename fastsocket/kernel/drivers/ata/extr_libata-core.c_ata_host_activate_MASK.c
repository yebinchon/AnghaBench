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
struct scsi_host_template {int dummy; } ;
struct ata_host {int n_ports; int /*<<< orphan*/  dev; int /*<<< orphan*/ * ports; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ata_host*,struct scsi_host_template*) ; 
 int FUNC2 (struct ata_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,struct ata_host*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,struct ata_host*) ; 

int FUNC7(struct ata_host *host, int irq,
		      irq_handler_t irq_handler, unsigned long irq_flags,
		      struct scsi_host_template *sht)
{
	int i, rc;

	rc = FUNC2(host);
	if (rc)
		return rc;

	/* Special case for polling mode */
	if (!irq) {
		FUNC0(irq_handler);
		return FUNC1(host, sht);
	}

	rc = FUNC6(host->dev, irq, irq_handler, irq_flags,
			      FUNC4(host->dev), host);
	if (rc)
		return rc;

	for (i = 0; i < host->n_ports; i++)
		FUNC3(host->ports[i], "irq %d", irq);

	rc = FUNC1(host, sht);
	/* if failed, just free the IRQ and leave ports alone */
	if (rc)
		FUNC5(host->dev, irq, host);

	return rc;
}