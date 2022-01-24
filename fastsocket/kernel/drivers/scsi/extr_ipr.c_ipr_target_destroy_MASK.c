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
struct scsi_target {scalar_t__ channel; struct ipr_sata_port* hostdata; int /*<<< orphan*/  id; int /*<<< orphan*/  dev; } ;
struct ipr_sata_port {int /*<<< orphan*/  ap; } ;
struct ipr_ioa_cfg {int /*<<< orphan*/  target_ids; int /*<<< orphan*/  vset_ids; int /*<<< orphan*/  array_ids; scalar_t__ sis64; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;

/* Variables and functions */
 scalar_t__ IPR_ARRAY_VIRTUAL_BUS ; 
 scalar_t__ IPR_VSET_VIRTUAL_BUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_target*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipr_sata_port*) ; 

__attribute__((used)) static void FUNC5(struct scsi_target *starget)
{
	struct ipr_sata_port *sata_port = starget->hostdata;
	struct Scsi_Host *shost = FUNC2(&starget->dev);
	struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *) shost->hostdata;

	if (ioa_cfg->sis64) {
		if (!FUNC3(starget)) {
			if (starget->channel == IPR_ARRAY_VIRTUAL_BUS)
				FUNC1(starget->id, ioa_cfg->array_ids);
			else if (starget->channel == IPR_VSET_VIRTUAL_BUS)
				FUNC1(starget->id, ioa_cfg->vset_ids);
			else if (starget->channel == 0)
				FUNC1(starget->id, ioa_cfg->target_ids);
		}
	}

	if (sata_port) {
		starget->hostdata = NULL;
		FUNC0(sata_port->ap);
		FUNC4(sata_port);
	}
}