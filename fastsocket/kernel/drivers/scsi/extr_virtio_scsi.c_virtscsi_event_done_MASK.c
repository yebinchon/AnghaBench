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
struct virtqueue {int /*<<< orphan*/  vdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  vq_lock; } ;
struct virtio_scsi {TYPE_1__ event_vq; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 struct virtio_scsi* FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct Scsi_Host* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  virtscsi_complete_event ; 
 int /*<<< orphan*/  FUNC4 (struct virtqueue*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct virtqueue *vq)
{
	struct Scsi_Host *sh = FUNC3(vq->vdev);
	struct virtio_scsi *vscsi = FUNC0(sh);
	unsigned long flags;

	FUNC1(&vscsi->event_vq.vq_lock, flags);
	FUNC4(vq, virtscsi_complete_event);
	FUNC2(&vscsi->event_vq.vq_lock, flags);
}