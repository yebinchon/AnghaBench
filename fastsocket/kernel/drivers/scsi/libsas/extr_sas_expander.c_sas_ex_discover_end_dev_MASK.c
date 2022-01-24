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
struct sas_rphy {int /*<<< orphan*/  dev; } ;
struct expander_device {int /*<<< orphan*/  children; struct ex_phy* ex_phy; } ;
struct ex_phy {int attached_tproto; int /*<<< orphan*/ * port; scalar_t__ attached_sata_dev; int /*<<< orphan*/  attached_sas_addr; int /*<<< orphan*/  attached_iproto; scalar_t__ attached_sata_ps; scalar_t__ attached_sata_host; } ;
struct domain_device {int tproto; TYPE_1__* port; int /*<<< orphan*/  dev_list_node; int /*<<< orphan*/  disco_list_node; struct sas_rphy* rphy; int /*<<< orphan*/  siblings; int /*<<< orphan*/  sas_addr; int /*<<< orphan*/  dev_type; int /*<<< orphan*/  hashed_sas_addr; int /*<<< orphan*/  iproto; struct domain_device* parent; int /*<<< orphan*/  kref; struct expander_device ex_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_list_lock; int /*<<< orphan*/  disco_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAS_ADDR_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  SAS_END_DEV ; 
 int SAS_PROTOCOL_SSP ; 
 int SAS_PROTOCOL_STP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct domain_device* FUNC7 () ; 
 int FUNC8 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct domain_device*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct domain_device*) ; 
 int FUNC11 (struct domain_device*) ; 
 struct sas_rphy* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct domain_device*,struct domain_device*,struct ex_phy*) ; 
 int /*<<< orphan*/  FUNC14 (struct domain_device*,struct sas_rphy*) ; 
 int FUNC15 (struct domain_device*,struct ex_phy*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct domain_device*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct sas_rphy*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (int) ; 

__attribute__((used)) static struct domain_device *FUNC27(
	struct domain_device *parent, int phy_id)
{
	struct expander_device *parent_ex = &parent->ex_dev;
	struct ex_phy *phy = &parent_ex->ex_phy[phy_id];
	struct domain_device *child = NULL;
	struct sas_rphy *rphy;
	int res;

	if (phy->attached_sata_host || phy->attached_sata_ps)
		return NULL;

	child = FUNC7();
	if (!child)
		return NULL;

	FUNC3(&parent->kref);
	child->parent = parent;
	child->port   = parent->port;
	child->iproto = phy->attached_iproto;
	FUNC6(child->sas_addr, phy->attached_sas_addr, SAS_ADDR_SIZE);
	FUNC16(child->hashed_sas_addr, child->sas_addr);
	if (!phy->port) {
		phy->port = FUNC19(&parent->rphy->dev, phy_id);
		if (FUNC26(!phy->port))
			goto out_err;
		if (FUNC26(FUNC18(phy->port) != 0)) {
			FUNC21(phy->port);
			goto out_err;
		}
	}
	FUNC13(parent, child, phy);
	FUNC9(child, phy->port);

#ifdef CONFIG_SCSI_SAS_ATA
	if ((phy->attached_tproto & SAS_PROTOCOL_STP) || phy->attached_sata_dev) {
		res = sas_get_ata_info(child, phy);
		if (res)
			goto out_free;

		sas_init_dev(child);
		res = sas_ata_init(child);
		if (res)
			goto out_free;
		rphy = sas_end_device_alloc(phy->port);
		if (!rphy)
			goto out_free;

		child->rphy = rphy;
		get_device(&rphy->dev);

		list_add_tail(&child->disco_list_node, &parent->port->disco_list);

		res = sas_discover_sata(child);
		if (res) {
			SAS_DPRINTK("sas_discover_sata() for device %16llx at "
				    "%016llx:0x%x returned 0x%x\n",
				    SAS_ADDR(child->sas_addr),
				    SAS_ADDR(parent->sas_addr), phy_id, res);
			goto out_list_del;
		}
	} else
#endif
	  if (phy->attached_tproto & SAS_PROTOCOL_SSP) {
		child->dev_type = SAS_END_DEV;
		rphy = FUNC12(phy->port);
		/* FIXME: error handling */
		if (FUNC26(!rphy))
			goto out_free;
		child->tproto = phy->attached_tproto;
		FUNC17(child);

		child->rphy = rphy;
		FUNC2(&rphy->dev);
		FUNC14(child, rphy);

		FUNC4(&child->disco_list_node, &parent->port->disco_list);

		res = FUNC10(child);
		if (res) {
			FUNC1("sas_discover_end_dev() for device %16llx "
				    "at %016llx:0x%x returned 0x%x\n",
				    FUNC0(child->sas_addr),
				    FUNC0(parent->sas_addr), phy_id, res);
			goto out_list_del;
		}
	} else {
		FUNC1("target proto 0x%x at %016llx:0x%x not handled\n",
			    phy->attached_tproto, FUNC0(parent->sas_addr),
			    phy_id);
		goto out_free;
	}

	FUNC4(&child->siblings, &parent_ex->children);
	return child;

 out_list_del:
	FUNC23(child->rphy);
	FUNC5(&child->disco_list_node);
	FUNC24(&parent->port->dev_list_lock);
	FUNC5(&child->dev_list_node);
	FUNC25(&parent->port->dev_list_lock);
 out_free:
	FUNC20(phy->port);
 out_err:
	phy->port = NULL;
	FUNC22(child);
	return NULL;
}