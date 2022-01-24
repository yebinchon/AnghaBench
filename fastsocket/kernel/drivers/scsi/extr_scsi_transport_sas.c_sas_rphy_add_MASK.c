#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct sas_identify {scalar_t__ device_type; int target_port_protocols; } ;
struct sas_rphy {int scsi_target_id; TYPE_2__ dev; int /*<<< orphan*/  list; struct sas_identify identify; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct sas_port {struct sas_rphy* rphy; TYPE_1__ dev; } ;
struct sas_host_attrs {int /*<<< orphan*/  lock; int /*<<< orphan*/  next_target_id; int /*<<< orphan*/  rphy_list; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ SAS_END_DEVICE ; 
 int SAS_PROTOCOL_SATA ; 
 int SAS_PROTOCOL_SSP ; 
 int SAS_PROTOCOL_STP ; 
 int SCAN_WILD_CARD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct sas_port* FUNC1 (int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct Scsi_Host*,struct sas_rphy*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct sas_host_attrs* FUNC10 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 

int FUNC13(struct sas_rphy *rphy)
{
	struct sas_port *parent = FUNC1(rphy->dev.parent);
	struct Scsi_Host *shost = FUNC2(parent->dev.parent);
	struct sas_host_attrs *sas_host = FUNC10(shost);
	struct sas_identify *identify = &rphy->identify;
	int error;

	if (parent->rphy)
		return -ENXIO;
	parent->rphy = rphy;

	error = FUNC3(&rphy->dev);
	if (error)
		return error;
	FUNC11(&rphy->dev);
	FUNC12(&rphy->dev);
	if (FUNC8(shost, rphy))
		FUNC7("fail to a bsg device %s\n", FUNC0(&rphy->dev));


	FUNC5(&sas_host->lock);
	FUNC4(&rphy->list, &sas_host->rphy_list);
	if (identify->device_type == SAS_END_DEVICE &&
	    (identify->target_port_protocols &
	     (SAS_PROTOCOL_SSP|SAS_PROTOCOL_STP|SAS_PROTOCOL_SATA)))
		rphy->scsi_target_id = sas_host->next_target_id++;
	else if (identify->device_type == SAS_END_DEVICE)
		rphy->scsi_target_id = -1;
	FUNC6(&sas_host->lock);

	if (identify->device_type == SAS_END_DEVICE &&
	    rphy->scsi_target_id != -1) {
		int lun;

		if (identify->target_port_protocols & SAS_PROTOCOL_SSP)
			lun = SCAN_WILD_CARD;
		else
			lun = 0;

		FUNC9(&rphy->dev, 0, rphy->scsi_target_id, lun, 0);
	}

	return 0;
}