#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  release; int /*<<< orphan*/  parent; } ;
struct TYPE_7__ {int /*<<< orphan*/  device_type; } ;
struct sas_rphy {TYPE_2__ dev; TYPE_1__ identify; int /*<<< orphan*/  scsi_target_id; } ;
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct sas_port {int /*<<< orphan*/  port_identifier; TYPE_3__ dev; } ;
struct sas_end_device {struct sas_rphy rphy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SAS_END_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 struct sas_rphy* FUNC1 (int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 struct sas_end_device* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sas_end_device_release ; 
 int /*<<< orphan*/  FUNC6 (struct sas_rphy*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

struct sas_rphy *FUNC9(struct sas_port *parent)
{
	struct Scsi_Host *shost = FUNC2(&parent->dev);
	struct sas_end_device *rdev;

	rdev = FUNC5(sizeof(*rdev), GFP_KERNEL);
	if (!rdev) {
		return NULL;
	}

	FUNC3(&rdev->rphy.dev);
	rdev->rphy.dev.parent = FUNC4(&parent->dev);
	rdev->rphy.dev.release = sas_end_device_release;
	if (FUNC7(parent->dev.parent)) {
		struct sas_rphy *rphy = FUNC1(parent->dev.parent);
		FUNC0(&rdev->rphy.dev, "end_device-%d:%d:%d",
			     shost->host_no, rphy->scsi_target_id,
			     parent->port_identifier);
	} else
		FUNC0(&rdev->rphy.dev, "end_device-%d:%d",
			     shost->host_no, parent->port_identifier);
	rdev->rphy.identify.device_type = SAS_END_DEVICE;
	FUNC6(&rdev->rphy);
	FUNC8(&rdev->rphy.dev);

	return &rdev->rphy;
}