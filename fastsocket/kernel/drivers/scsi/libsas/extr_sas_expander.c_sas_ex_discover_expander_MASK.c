#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sas_rphy {int /*<<< orphan*/  dev; } ;
struct sas_expander_device {scalar_t__ level; } ;
struct ex_phy {scalar_t__ routing_attr; int attached_dev_type; int /*<<< orphan*/  attached_sas_addr; int /*<<< orphan*/  attached_tproto; int /*<<< orphan*/  attached_iproto; int /*<<< orphan*/  port; int /*<<< orphan*/  attached_phy_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  children; struct ex_phy* ex_phy; } ;
struct domain_device {int dev_type; TYPE_2__ ex_dev; int /*<<< orphan*/  siblings; struct asd_sas_port* port; int /*<<< orphan*/  dev_list_node; int /*<<< orphan*/  sas_addr; int /*<<< orphan*/  hashed_sas_addr; int /*<<< orphan*/  tproto; int /*<<< orphan*/  iproto; struct domain_device* parent; int /*<<< orphan*/  kref; struct sas_rphy* rphy; } ;
struct TYPE_3__ {int /*<<< orphan*/  max_level; } ;
struct asd_sas_port {int /*<<< orphan*/  dev_list_lock; int /*<<< orphan*/  dev_list; TYPE_1__ disc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ DIRECT_ROUTING ; 
#define  EDGE_DEV 129 
#define  FANOUT_DEV 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAS_ADDR_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAS_EDGE_EXPANDER_DEVICE ; 
 int /*<<< orphan*/  SAS_FANOUT_EXPANDER_DEVICE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sas_expander_device* FUNC10 (struct sas_rphy*) ; 
 struct domain_device* FUNC11 () ; 
 int FUNC12 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct domain_device*,struct domain_device*,struct ex_phy*) ; 
 struct sas_rphy* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct domain_device*,struct sas_rphy*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct domain_device*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct sas_rphy*) ; 
 int /*<<< orphan*/  FUNC22 (struct sas_rphy*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct domain_device *FUNC25(
	struct domain_device *parent, int phy_id)
{
	struct sas_expander_device *parent_ex = FUNC10(parent->rphy);
	struct ex_phy *phy = &parent->ex_dev.ex_phy[phy_id];
	struct domain_device *child = NULL;
	struct sas_rphy *rphy;
	struct sas_expander_device *edev;
	struct asd_sas_port *port;
	int res;

	if (phy->routing_attr == DIRECT_ROUTING) {
		FUNC3("ex %016llx:0x%x:D <--> ex %016llx:0x%x is not "
			    "allowed\n",
			    FUNC2(parent->sas_addr), phy_id,
			    FUNC2(phy->attached_sas_addr),
			    phy->attached_phy_id);
		return NULL;
	}
	child = FUNC11();
	if (!child)
		return NULL;

	phy->port = FUNC19(&parent->rphy->dev, phy_id);
	/* FIXME: better error handling */
	FUNC1(FUNC18(phy->port) != 0);


	switch (phy->attached_dev_type) {
	case EDGE_DEV:
		rphy = FUNC14(phy->port,
					  SAS_EDGE_EXPANDER_DEVICE);
		break;
	case FANOUT_DEV:
		rphy = FUNC14(phy->port,
					  SAS_FANOUT_EXPANDER_DEVICE);
		break;
	default:
		rphy = NULL;	/* shut gcc up */
		FUNC0();
	}
	port = parent->port;
	child->rphy = rphy;
	FUNC4(&rphy->dev);
	edev = FUNC10(rphy);
	child->dev_type = phy->attached_dev_type;
	FUNC5(&parent->kref);
	child->parent = parent;
	child->port = port;
	child->iproto = phy->attached_iproto;
	child->tproto = phy->attached_tproto;
	FUNC9(child->sas_addr, phy->attached_sas_addr, SAS_ADDR_SIZE);
	FUNC16(child->hashed_sas_addr, child->sas_addr);
	FUNC13(parent, child, phy);
	edev->level = parent_ex->level + 1;
	parent->port->disc.max_level = FUNC8(parent->port->disc.max_level,
					   edev->level);
	FUNC17(child);
	FUNC15(child, rphy);
	FUNC21(rphy);

	FUNC23(&parent->port->dev_list_lock);
	FUNC6(&child->dev_list_node, &parent->port->dev_list);
	FUNC24(&parent->port->dev_list_lock);

	res = FUNC12(child);
	if (res) {
		FUNC22(rphy);
		FUNC23(&parent->port->dev_list_lock);
		FUNC7(&child->dev_list_node);
		FUNC24(&parent->port->dev_list_lock);
		FUNC20(child);
		return NULL;
	}
	FUNC6(&child->siblings, &parent->ex_dev.children);
	return child;
}