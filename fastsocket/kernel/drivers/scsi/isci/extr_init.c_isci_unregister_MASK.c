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
struct isci_host {int /*<<< orphan*/  sas_ha; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC4 (struct isci_host*) ; 

__attribute__((used)) static void FUNC5(struct isci_host *isci_host)
{
	struct Scsi_Host *shost;

	if (!isci_host)
		return;

	FUNC1(&isci_host->sas_ha);

	shost = FUNC4(isci_host);
	FUNC0(shost);
	FUNC3(shost);
	FUNC2(shost);
}