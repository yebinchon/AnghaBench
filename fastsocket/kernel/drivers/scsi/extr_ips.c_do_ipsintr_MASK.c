#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int (* intr ) (TYPE_2__*) ;} ;
struct TYPE_7__ {size_t host_num; TYPE_1__ func; int /*<<< orphan*/  active; } ;
typedef  TYPE_2__ ips_ha_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPS_INTR_ON ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host** ips_sh ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static irqreturn_t
FUNC7(int irq, void *dev_id)
{
	ips_ha_t *ha;
	struct Scsi_Host *host;
	int irqstatus;

	FUNC1("do_ipsintr", 2);

	ha = (ips_ha_t *) dev_id;
	if (!ha)
		return IRQ_NONE;
	host = ips_sh[ha->host_num];
	/* interrupt during initialization */
	if (!host) {
		(*ha->func.intr) (ha);
		return IRQ_HANDLED;
	}

	FUNC3(host->host_lock);

	if (!ha->active) {
		FUNC4(host->host_lock);
		return IRQ_HANDLED;
	}

	irqstatus = (*ha->func.intr) (ha);

	FUNC4(host->host_lock);

	/* start the next command */
	FUNC2(ha, IPS_INTR_ON);
	return FUNC0(irqstatus);
}