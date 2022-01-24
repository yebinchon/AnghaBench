#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sas_rphy {int /*<<< orphan*/  scsi_target_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  release; int /*<<< orphan*/  parent; } ;
struct sas_port {int port_identifier; TYPE_1__ dev; int /*<<< orphan*/  phy_list; int /*<<< orphan*/  phy_list_mutex; } ;
struct device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,int,...) ; 
 struct sas_rphy* FUNC2 (struct device*) ; 
 struct Scsi_Host* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 struct sas_port* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sas_port_release ; 
 scalar_t__ FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

struct sas_port *FUNC10(struct device *parent, int port_id)
{
	struct Scsi_Host *shost = FUNC3(parent);
	struct sas_port *port;

	port = FUNC6(sizeof(*port), GFP_KERNEL);
	if (!port)
		return NULL;

	port->port_identifier = port_id;

	FUNC4(&port->dev);

	port->dev.parent = FUNC5(parent);
	port->dev.release = sas_port_release;

	FUNC7(&port->phy_list_mutex);
	FUNC0(&port->phy_list);

	if (FUNC8(parent)) {
		struct sas_rphy *rphy = FUNC2(parent);
		FUNC1(&port->dev, "port-%d:%d:%d", shost->host_no,
			     rphy->scsi_target_id, port->port_identifier);
	} else
		FUNC1(&port->dev, "port-%d:%d", shost->host_no,
			     port->port_identifier);

	FUNC9(&port->dev);

	return port;
}