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
struct device {int /*<<< orphan*/  parent; } ;
struct scsi_target {int /*<<< orphan*/  siblings; struct device dev; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; TYPE_1__* hostt; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* target_destroy ) (struct scsi_target*) ;} ;

/* Variables and functions */
 struct Scsi_Host* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_target*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

__attribute__((used)) static void FUNC7(struct scsi_target *starget)
{
	struct device *dev = &starget->dev;
	struct Scsi_Host *shost = FUNC0(dev->parent);
	unsigned long flags;

	FUNC6(dev);
	FUNC3(shost->host_lock, flags);
	if (shost->hostt->target_destroy)
		shost->hostt->target_destroy(starget);
	FUNC1(&starget->siblings);
	FUNC4(shost->host_lock, flags);
	FUNC2(dev);
}