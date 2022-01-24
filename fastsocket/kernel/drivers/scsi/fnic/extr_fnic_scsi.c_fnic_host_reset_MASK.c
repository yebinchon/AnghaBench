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
struct scsi_cmnd {TYPE_1__* device; } ;
struct fc_lport {scalar_t__ state; scalar_t__ link_up; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int FAILED ; 
 unsigned long FNIC_HOST_RESET_SETTLE_TIME ; 
 unsigned long HZ ; 
 scalar_t__ LPORT_ST_READY ; 
 int SUCCESS ; 
 int FUNC0 (struct Scsi_Host*) ; 
 unsigned long jiffies ; 
 struct fc_lport* FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

int FUNC4(struct scsi_cmnd *sc)
{
	int ret;
	unsigned long wait_host_tmo;
	struct Scsi_Host *shost = sc->device->host;
	struct fc_lport *lp = FUNC1(shost);

	/*
	 * If fnic_reset is successful, wait for fabric login to complete
	 * scsi-ml tries to send a TUR to every device if host reset is
	 * successful, so before returning to scsi, fabric should be up
	 */
	ret = FUNC0(shost);
	if (ret == SUCCESS) {
		wait_host_tmo = jiffies + FNIC_HOST_RESET_SETTLE_TIME * HZ;
		ret = FAILED;
		while (FUNC3(jiffies, wait_host_tmo)) {
			if ((lp->state == LPORT_ST_READY) &&
			    (lp->link_up)) {
				ret = SUCCESS;
				break;
			}
			FUNC2(1);
		}
	}

	return ret;
}