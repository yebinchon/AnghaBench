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
struct nv_swncq_port_priv {int /*<<< orphan*/  qc_active; } ;
struct TYPE_2__ {scalar_t__ protocol; } ;
struct ata_queued_cmd {TYPE_1__ tf; struct ata_port* ap; } ;
struct ata_port {struct nv_swncq_port_priv* private_data; } ;

/* Variables and functions */
 scalar_t__ ATA_PROT_NCQ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int FUNC1 (struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*,struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_port*,struct ata_queued_cmd*) ; 

__attribute__((used)) static unsigned int FUNC4(struct ata_queued_cmd *qc)
{
	struct ata_port *ap = qc->ap;
	struct nv_swncq_port_priv *pp = ap->private_data;

	if (qc->tf.protocol != ATA_PROT_NCQ)
		return FUNC1(qc);

	FUNC0("Enter\n");

	if (!pp->qc_active)
		FUNC2(ap, qc);
	else
		FUNC3(ap, qc);	/* add qc to defer queue */

	return 0;
}