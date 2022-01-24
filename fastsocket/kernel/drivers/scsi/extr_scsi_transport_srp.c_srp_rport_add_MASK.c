#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct srp_rport_identifiers {scalar_t__ roles; int /*<<< orphan*/  port_id; } ;
struct TYPE_11__ {int /*<<< orphan*/  release; int /*<<< orphan*/  parent; } ;
struct srp_rport {scalar_t__ roles; TYPE_1__ dev; int /*<<< orphan*/  port_id; } ;
struct device {int dummy; } ;
struct Scsi_Host {int active_mode; int /*<<< orphan*/  host_no; struct device shost_gendev; } ;
struct TYPE_12__ {int /*<<< orphan*/  next_port_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct srp_rport* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MODE_TARGET ; 
 scalar_t__ SRP_RPORT_ROLE_INITIATOR ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 struct srp_rport* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  srp_rport_release ; 
 int FUNC10 (struct Scsi_Host*,unsigned long,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC11 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 

struct srp_rport *FUNC16(struct Scsi_Host *shost,
				struct srp_rport_identifiers *ids)
{
	struct srp_rport *rport;
	struct device *parent = &shost->shost_gendev;
	int id, ret;

	rport = FUNC7(sizeof(*rport), GFP_KERNEL);
	if (!rport)
		return FUNC0(-ENOMEM);

	FUNC5(&rport->dev);

	rport->dev.parent = FUNC6(parent);
	rport->dev.release = srp_rport_release;

	FUNC8(rport->port_id, ids->port_id, sizeof(rport->port_id));
	rport->roles = ids->roles;

	id = FUNC1(&FUNC11(shost)->next_port_id);
	FUNC2(&rport->dev, "port-%d:%d", shost->host_no, id);

	FUNC15(&rport->dev);

	ret = FUNC3(&rport->dev);
	if (ret) {
		FUNC14(&rport->dev);
		FUNC9(&rport->dev);
		return FUNC0(ret);
	}

	if (shost->active_mode & MODE_TARGET &&
	    ids->roles == SRP_RPORT_ROLE_INITIATOR) {
		ret = FUNC10(shost, (unsigned long)rport,
					      rport->port_id);
		if (ret) {
			FUNC4(&rport->dev);
			FUNC14(&rport->dev);
			FUNC9(&rport->dev);
			return FUNC0(ret);
		}
	}

	FUNC12(&rport->dev);
	FUNC13(&rport->dev);

	return rport;
}