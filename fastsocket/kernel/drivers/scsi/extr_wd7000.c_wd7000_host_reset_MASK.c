#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_4__ {int /*<<< orphan*/  host_lock; scalar_t__ hostdata; } ;
struct TYPE_3__ {TYPE_2__* host; } ;
typedef  int /*<<< orphan*/  Adapter ;

/* Variables and functions */
 int FAILED ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct scsi_cmnd *SCpnt)
{
	Adapter *host = (Adapter *) SCpnt->device->host->hostdata;

	FUNC0(SCpnt->device->host->host_lock);

	if (FUNC1(host) < 0) {
		FUNC0(SCpnt->device->host->host_lock);
		return FAILED;
	}

	FUNC2(host);

	FUNC0(SCpnt->device->host->host_lock);
	return SUCCESS;
}