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
struct net_device {int dummy; } ;
struct fcoe_port {int /*<<< orphan*/  destroy_work; int /*<<< orphan*/  min_queue_depth; int /*<<< orphan*/  max_queue_depth; int /*<<< orphan*/  get_netdev; struct fcoe_interface* priv; struct fc_lport* lport; } ;
struct fcoe_interface {struct net_device* netdev; } ;
struct fcoe_ctlr {int dummy; } ;
struct fc_vport {int /*<<< orphan*/  port_name; int /*<<< orphan*/  node_name; } ;
struct fc_lport {int /*<<< orphan*/  host; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct fc_lport* FUNC0 (int) ; 
 int /*<<< orphan*/  FCOE_MAX_QUEUE_DEPTH ; 
 int /*<<< orphan*/  FCOE_MIN_QUEUE_DEPTH ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct fc_vport* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_lport*) ; 
 int FUNC5 (struct fc_lport*,struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fcoe_destroy_work ; 
 int FUNC8 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC9 (struct fc_lport*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC11 (struct fc_lport*) ; 
 int FUNC12 (struct fc_lport*,struct fcoe_ctlr*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  fcoe_libfc_fcn_templ ; 
 int FUNC13 (struct fc_lport*) ; 
 int /*<<< orphan*/  fcoe_netdev ; 
 int FUNC14 (struct fc_lport*,struct net_device*) ; 
 int FUNC15 (struct fc_lport*,struct device*) ; 
 int /*<<< orphan*/  fcoe_shost_template ; 
 struct fcoe_ctlr* FUNC16 (struct fcoe_interface*) ; 
 struct fc_lport* FUNC17 (int /*<<< orphan*/ *,int) ; 
 struct fc_lport* FUNC18 (struct fc_vport*,int) ; 
 struct fcoe_port* FUNC19 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 struct fc_lport* FUNC21 (struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC22 (struct fc_vport*) ; 

__attribute__((used)) static struct fc_lport *FUNC23(struct fcoe_interface *fcoe,
				       struct device *parent, int npiv)
{
	struct fcoe_ctlr *ctlr = FUNC16(fcoe);
	struct net_device *netdev = fcoe->netdev;
	struct fc_lport *lport, *n_port;
	struct fcoe_port *port;
	struct Scsi_Host *shost;
	int rc;
	/*
	 * parent is only a vport if npiv is 1,
	 * but we'll only use vport in that case so go ahead and set it
	 */
	struct fc_vport *vport = FUNC3(parent);

	FUNC1(netdev, "Create Interface\n");

	if (!npiv)
		lport = FUNC17(&fcoe_shost_template, sizeof(*port));
	else
		lport = FUNC18(vport, sizeof(*port));

	if (!lport) {
		FUNC1(netdev, "Could not allocate host structure\n");
		rc = -ENOMEM;
		goto out;
	}
	port = FUNC19(lport);
	port->lport = lport;
	port->priv = fcoe;
	port->get_netdev = fcoe_netdev;
	port->max_queue_depth = FCOE_MAX_QUEUE_DEPTH;
	port->min_queue_depth = FCOE_MIN_QUEUE_DEPTH;
	FUNC2(&port->destroy_work, fcoe_destroy_work);

	/*
	 * Need to add the lport to the hostlist
	 * so we catch NETDEV_CHANGE events.
	 */
	FUNC10(lport);

	/* configure a fc_lport including the exchange manager */
	rc = FUNC13(lport);
	if (rc) {
		FUNC1(netdev, "Could not configure lport for the "
				"interface\n");
		goto out_host_put;
	}

	if (npiv) {
		FUNC1(netdev, "Setting vport names, "
				"%16.16llx %16.16llx\n",
				vport->node_name, vport->port_name);
		FUNC6(lport, vport->node_name);
		FUNC7(lport, vport->port_name);
	}

	/* configure lport network properties */
	rc = FUNC14(lport, netdev);
	if (rc) {
		FUNC1(netdev, "Could not configure netdev for the "
				"interface\n");
		goto out_lp_destroy;
	}

	/* configure lport scsi host properties */
	rc = FUNC15(lport, parent);
	if (rc) {
		FUNC1(netdev, "Could not configure shost for the "
				"interface\n");
		goto out_lp_destroy;
	}

	/* Initialize the library */
	rc = FUNC12(lport, ctlr, &fcoe_libfc_fcn_templ, 1);
	if (rc) {
		FUNC1(netdev, "Could not configure libfc for the "
				"interface\n");
		goto out_lp_destroy;
	}

	/* Initialized FDMI information */
	FUNC9(lport, netdev);

	/*
	 * fcoe_em_alloc() and fcoe_hostlist_add() both
	 * need to be atomic with respect to other changes to the
	 * hostlist since fcoe_em_alloc() looks for an existing EM
	 * instance on host list updated by fcoe_hostlist_add().
	 *
	 * This is currently handled through the fcoe_config_mutex
	 * begin held.
	 */
	if (!npiv)
		/* lport exch manager allocation */
		rc = FUNC8(lport);
	else {
		shost = FUNC22(vport);
		n_port = FUNC21(shost);
		rc = FUNC5(n_port, lport);
	}

	if (rc) {
		FUNC1(netdev, "Could not configure the EM\n");
		goto out_lp_destroy;
	}

	return lport;

out_lp_destroy:
	FUNC4(lport);
out_host_put:
	FUNC11(lport);
	FUNC20(lport->host);
out:
	return FUNC0(rc);
}