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
struct lpfc_vport {int fc_flag; int /*<<< orphan*/  phba; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int FC_DISC_DELAYED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct lpfc_vport*) ; 
 struct Scsi_Host* FUNC1 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct lpfc_vport *vport)
{
	struct Scsi_Host *shost = FUNC1(vport);

	FUNC2(shost->host_lock);
	if (!(vport->fc_flag & FC_DISC_DELAYED)) {
		FUNC3(shost->host_lock);
		return;
	}
	vport->fc_flag &= ~FC_DISC_DELAYED;
	FUNC3(shost->host_lock);

	FUNC0(vport->phba, vport);
}