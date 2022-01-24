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
struct work_struct {int dummy; } ;
struct sas_ha_struct {int /*<<< orphan*/  disco_mutex; int /*<<< orphan*/  state; } ;
struct sas_discovery_event {struct asd_sas_port* port; } ;
struct TYPE_2__ {int /*<<< orphan*/  pending; } ;
struct asd_sas_port {int /*<<< orphan*/  id; scalar_t__ port_dev; TYPE_1__ disc; struct sas_ha_struct* ha; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCE_REVALIDATE_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  SAS_HA_ATA_EH_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sas_discovery_event* FUNC7 (struct work_struct*) ; 

__attribute__((used)) static void FUNC8(struct work_struct *work)
{
	int res = 0;
	struct sas_discovery_event *ev = FUNC7(work);
	struct asd_sas_port *port = ev->port;
	struct sas_ha_struct *ha = port->ha;

	/* prevent revalidation from finding sata links in recovery */
	FUNC2(&ha->disco_mutex);
	if (FUNC6(SAS_HA_ATA_EH_ACTIVE, &ha->state)) {
		FUNC0("REVALIDATION DEFERRED on port %d, pid:%d\n",
			    port->id, FUNC5(current));
		goto out;
	}

	FUNC1(DISCE_REVALIDATE_DOMAIN, &port->disc.pending);

	FUNC0("REVALIDATING DOMAIN on port %d, pid:%d\n", port->id,
		    FUNC5(current));

	if (port->port_dev)
		res = FUNC4(port->port_dev);

	FUNC0("done REVALIDATING DOMAIN on port %d, pid:%d, res 0x%x\n",
		    port->id, FUNC5(current), res);
 out:
	FUNC3(&ha->disco_mutex);
}