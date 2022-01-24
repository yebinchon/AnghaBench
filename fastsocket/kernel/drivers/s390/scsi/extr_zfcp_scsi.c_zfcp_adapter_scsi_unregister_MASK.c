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
struct zfcp_adapter {struct Scsi_Host* scsi_host; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 

void FUNC3(struct zfcp_adapter *adapter)
{
	struct Scsi_Host *shost;

	shost = adapter->scsi_host;
	if (!shost)
		return;

	FUNC0(shost);
	FUNC2(shost);
	FUNC1(shost);
	adapter->scsi_host = NULL;
}