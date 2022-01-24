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
typedef  int u8 ;
struct TYPE_8__ {int port_no; } ;
struct domain_device {TYPE_4__ sata_dev; TYPE_3__* parent; TYPE_2__* port; } ;
struct asd_ha_struct {int dummy; } ;
struct TYPE_7__ {scalar_t__ lldd_dev; } ;
struct TYPE_6__ {TYPE_1__* ha; } ;
struct TYPE_5__ {struct asd_ha_struct* lldd_ha; } ;

/* Variables and functions */
 int ATA_CMD_SCBPTR ; 
 int /*<<< orphan*/  NUM_SATA_TAGS ; 
 int PARENT_DDB ; 
 int /*<<< orphan*/  PM_PORT_FLAGS ; 
 int PM_PORT_SET ; 
 int SISTER_DDB ; 
 scalar_t__ FUNC0 (struct asd_ha_struct*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct asd_ha_struct*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct asd_ha_struct*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct asd_ha_struct*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct asd_ha_struct*,int) ; 
 int FUNC5 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct domain_device*) ; 
 int FUNC7 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct domain_device*) ; 

__attribute__((used)) static int FUNC9(struct domain_device *dev)
{
	int ddb, i, parent_ddb, pmtable_ddb;
	struct asd_ha_struct *asd_ha = dev->port->ha->lldd_ha;
	u8  flags;

	ddb = FUNC5(asd_ha);
	if (ddb < 0)
		return ddb;

	FUNC8(dev);
	flags = (dev->sata_dev.port_no << 4) | PM_PORT_SET;
	FUNC2(asd_ha, ddb, PM_PORT_FLAGS, flags);
	FUNC3(asd_ha, ddb, SISTER_DDB, 0xFFFF);
	FUNC3(asd_ha, ddb, ATA_CMD_SCBPTR, 0xFFFF);
	FUNC6(dev);

	parent_ddb = (int) (unsigned long) dev->parent->lldd_dev;
	FUNC3(asd_ha, ddb, PARENT_DDB, parent_ddb);
	pmtable_ddb = FUNC1(asd_ha, parent_ddb, SISTER_DDB);
	FUNC3(asd_ha, pmtable_ddb, dev->sata_dev.port_no,ddb);

	if (FUNC0(asd_ha, ddb, NUM_SATA_TAGS) > 0) {
		i = FUNC7(dev);
		if (i < 0) {
			FUNC4(asd_ha, ddb);
			return i;
		}
	}
	return 0;
}