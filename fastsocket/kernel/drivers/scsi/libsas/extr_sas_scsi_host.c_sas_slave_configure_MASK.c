#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct scsi_device {int allow_restart; scalar_t__ tagged_supported; int /*<<< orphan*/  lun; } ;
struct sas_ha_struct {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  ap; } ;
struct domain_device {int /*<<< orphan*/  sas_addr; TYPE_3__* port; TYPE_2__ sata_dev; TYPE_1__* rphy; } ;
struct TYPE_8__ {scalar_t__ device_type; } ;
struct TYPE_7__ {struct sas_ha_struct* ha; } ;
struct TYPE_5__ {TYPE_4__ identify; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MSG_SIMPLE_TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAS_DEF_QD ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SAS_END_DEVICE ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 struct domain_device* FUNC9 (struct scsi_device*) ; 

int FUNC10(struct scsi_device *scsi_dev)
{
	struct domain_device *dev = FUNC9(scsi_dev);
	struct sas_ha_struct *sas_ha;

	FUNC0(dev->rphy->identify.device_type != SAS_END_DEVICE);

	if (FUNC4(dev)) {
		FUNC3(scsi_dev, dev->sata_dev.ap);
		return 0;
	}

	sas_ha = dev->port->ha;

	FUNC5(scsi_dev);

	if (scsi_dev->tagged_supported) {
		FUNC8(scsi_dev, MSG_SIMPLE_TAG);
		FUNC6(scsi_dev, SAS_DEF_QD);
	} else {
		FUNC2("device %llx, LUN %x doesn't support "
			    "TCQ\n", FUNC1(dev->sas_addr),
			    scsi_dev->lun);
		scsi_dev->tagged_supported = 0;
		FUNC8(scsi_dev, 0);
		FUNC7(scsi_dev, 1);
	}

	scsi_dev->allow_restart = 1;

	return 0;
}