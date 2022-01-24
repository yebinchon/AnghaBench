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
typedef  size_t u32 ;
struct virtio_scsi {int /*<<< orphan*/ ** tgt; } ;
struct virtio_device {TYPE_1__* config; } ;
struct Scsi_Host {size_t max_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* del_vqs ) (struct virtio_device*) ;int /*<<< orphan*/  (* reset ) (struct virtio_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct virtio_scsi* FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_device*) ; 
 struct Scsi_Host* FUNC4 (struct virtio_device*) ; 

__attribute__((used)) static void FUNC5(struct virtio_device *vdev)
{
	struct Scsi_Host *sh = FUNC4(vdev);
	struct virtio_scsi *vscsi = FUNC1(sh);
	u32 i, num_targets;

	/* Stop all the virtqueues. */
	vdev->config->reset(vdev);

	num_targets = sh->max_id;
	for (i = 0; i < num_targets; i++) {
		FUNC0(vscsi->tgt[i]);
		vscsi->tgt[i] = NULL;
	}

	vdev->config->del_vqs(vdev);
}