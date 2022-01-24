#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sas_internal {TYPE_3__* dft; } ;
struct TYPE_5__ {TYPE_1__* shost; } ;
struct sas_ha_struct {int /*<<< orphan*/  phy_port_lock; TYPE_2__ core; } ;
struct domain_device {int /*<<< orphan*/  pathways; } ;
struct asd_sas_port {int num_phys; unsigned int phy_mask; int /*<<< orphan*/  phy_list_lock; scalar_t__ oob_mode; scalar_t__ tproto; scalar_t__ iproto; scalar_t__ class; int /*<<< orphan*/  attached_sas_addr; int /*<<< orphan*/  sas_addr; int /*<<< orphan*/  phy_list; int /*<<< orphan*/ * port; struct domain_device* port_dev; } ;
struct asd_sas_phy {unsigned int id; struct asd_sas_port* port; int /*<<< orphan*/  port_phy_el; int /*<<< orphan*/  phy; struct sas_ha_struct* ha; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* lldd_port_deformed ) (struct asd_sas_phy*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  transportt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SAS_ADDR_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct domain_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct asd_sas_phy*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct asd_sas_port*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct asd_sas_phy*) ; 
 struct sas_internal* FUNC13 (int /*<<< orphan*/ ) ; 

void FUNC14(struct asd_sas_phy *phy, int gone)
{
	struct sas_ha_struct *sas_ha = phy->ha;
	struct asd_sas_port *port = phy->port;
	struct sas_internal *si =
		FUNC13(sas_ha->core.shost->transportt);
	struct domain_device *dev;
	unsigned long flags;

	if (!port)
		return;		  /* done by a phy event */

	dev = port->port_dev;
	if (dev)
		dev->pathways--;

	if (port->num_phys == 1) {
		FUNC7(port, gone);
		FUNC5(port->port);
		port->port = NULL;
	} else {
		FUNC6(port->port, phy->phy);
		FUNC3(dev, port->port);
	}

	if (si->dft->lldd_port_deformed)
		si->dft->lldd_port_deformed(phy);

	FUNC9(&sas_ha->phy_port_lock, flags);
	FUNC8(&port->phy_list_lock);

	FUNC1(&phy->port_phy_el);
	FUNC4(phy, NULL);
	phy->port = NULL;
	port->num_phys--;
	port->phy_mask &= ~(1U << phy->id);

	if (port->num_phys == 0) {
		FUNC0(&port->phy_list);
		FUNC2(port->sas_addr, 0, SAS_ADDR_SIZE);
		FUNC2(port->attached_sas_addr, 0, SAS_ADDR_SIZE);
		port->class = 0;
		port->iproto = 0;
		port->tproto = 0;
		port->oob_mode = 0;
		port->phy_mask = 0;
	}
	FUNC10(&port->phy_list_lock);
	FUNC11(&sas_ha->phy_port_lock, flags);

	return;
}