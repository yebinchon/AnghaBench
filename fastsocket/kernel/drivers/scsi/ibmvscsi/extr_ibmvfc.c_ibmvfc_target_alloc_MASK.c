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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct scsi_target {void* hostdata; TYPE_1__ dev; } ;
struct ibmvfc_host {int /*<<< orphan*/  task_set; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 struct Scsi_Host* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ibmvfc_host* FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct scsi_target *starget)
{
	struct Scsi_Host *shost = FUNC0(starget->dev.parent);
	struct ibmvfc_host *vhost = FUNC1(shost);
	unsigned long flags = 0;

	FUNC2(shost->host_lock, flags);
	starget->hostdata = (void *)(unsigned long)vhost->task_set++;
	FUNC3(shost->host_lock, flags);
	return 0;
}