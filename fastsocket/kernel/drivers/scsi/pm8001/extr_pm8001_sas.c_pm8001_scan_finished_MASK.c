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
struct sas_ha_struct {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 unsigned long HZ ; 
 struct sas_ha_struct* FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (struct sas_ha_struct*) ; 

int FUNC2(struct Scsi_Host *shost, unsigned long time)
{
	struct sas_ha_struct *ha = FUNC0(shost);

	/* give the phy enabling interrupt event time to come in (1s
	* is empirically about all it takes) */
	if (time < HZ)
		return 0;
	/* Wait for discovery to finish */
	FUNC1(ha);
	return 1;
}