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
struct virtio_scsi_event_node {int /*<<< orphan*/  event; } ;
struct virtio_scsi_event {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vq_lock; int /*<<< orphan*/  vq; } ;
struct virtio_scsi {TYPE_1__ event_vq; } ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ,int,struct virtio_scsi_event_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct virtio_scsi *vscsi,
			       struct virtio_scsi_event_node *event_node)
{
	int ret;
	struct scatterlist sg;
	unsigned long flags;

	FUNC0(&sg, &event_node->event, sizeof(struct virtio_scsi_event));

	FUNC1(&vscsi->event_vq.vq_lock, flags);

	ret = FUNC3(vscsi->event_vq.vq, &sg, 0, 1, event_node);
	if (ret >= 0)
		FUNC4(vscsi->event_vq.vq);

	FUNC2(&vscsi->event_vq.vq_lock, flags);

	return ret;
}