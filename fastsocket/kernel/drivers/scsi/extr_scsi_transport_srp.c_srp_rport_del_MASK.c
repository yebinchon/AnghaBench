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
struct device {int /*<<< orphan*/  parent; } ;
struct srp_rport {scalar_t__ roles; struct device dev; } ;
struct Scsi_Host {int active_mode; } ;

/* Variables and functions */
 int MODE_TARGET ; 
 scalar_t__ SRP_RPORT_ROLE_INITIATOR ; 
 struct Scsi_Host* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

void FUNC6(struct srp_rport *rport)
{
	struct device *dev = &rport->dev;
	struct Scsi_Host *shost = FUNC0(dev->parent);

	if (shost->active_mode & MODE_TARGET &&
	    rport->roles == SRP_RPORT_ROLE_INITIATOR)
		FUNC3(shost, (unsigned long)rport);

	FUNC5(dev);
	FUNC1(dev);
	FUNC4(dev);
	FUNC2(dev);
}