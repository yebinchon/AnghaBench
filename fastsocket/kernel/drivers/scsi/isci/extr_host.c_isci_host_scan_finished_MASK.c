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
struct sas_ha_struct {struct isci_host* lldd_ha; } ;
struct isci_host {int /*<<< orphan*/  flags; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IHOST_START_PENDING ; 
 struct sas_ha_struct* FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (struct sas_ha_struct*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct Scsi_Host *shost, unsigned long time)
{
	struct sas_ha_struct *ha = FUNC0(shost);
	struct isci_host *ihost = ha->lldd_ha;

	if (FUNC2(IHOST_START_PENDING, &ihost->flags))
		return 0;

	FUNC1(ha);

	return 1;
}