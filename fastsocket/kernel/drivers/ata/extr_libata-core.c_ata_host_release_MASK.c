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
struct ata_port {struct ata_port* slave_link; struct ata_port* pmp_link; scalar_t__ scsi_host; } ;
struct ata_host {int n_ports; struct ata_port** ports; } ;

/* Variables and functions */
 struct ata_host* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct device *gendev, void *res)
{
	struct ata_host *host = FUNC0(gendev);
	int i;

	for (i = 0; i < host->n_ports; i++) {
		struct ata_port *ap = host->ports[i];

		if (!ap)
			continue;

		if (ap->scsi_host)
			FUNC3(ap->scsi_host);

		FUNC2(ap->pmp_link);
		FUNC2(ap->slave_link);
		FUNC2(ap);
		host->ports[i] = NULL;
	}

	FUNC1(gendev, NULL);
}