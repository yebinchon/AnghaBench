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
typedef  int /*<<< orphan*/  vq_callback_t ;
typedef  int u32 ;
struct virtqueue {int dummy; } ;
struct virtio_scsi {int /*<<< orphan*/ * tgt; int /*<<< orphan*/  req_vq; int /*<<< orphan*/  event_vq; int /*<<< orphan*/  ctrl_vq; } ;
struct virtio_device {TYPE_1__* config; } ;
struct TYPE_2__ {int (* find_vqs ) (struct virtio_device*,int,struct virtqueue**,int /*<<< orphan*/ **,char const**) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  VIRTIO_SCSI_CDB_SIZE ; 
 int /*<<< orphan*/  VIRTIO_SCSI_F_HOTPLUG ; 
 int /*<<< orphan*/  VIRTIO_SCSI_SENSE_SIZE ; 
 int /*<<< orphan*/  cdb_size ; 
 int /*<<< orphan*/  seg_max ; 
 int /*<<< orphan*/  sense_size ; 
 int FUNC0 (struct virtio_device*,int,struct virtqueue**,int /*<<< orphan*/ **,char const**) ; 
 scalar_t__ FUNC1 (struct virtio_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct virtio_device*,int) ; 
 scalar_t__ FUNC3 (struct virtio_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct virtio_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * virtscsi_ctrl_done ; 
 int /*<<< orphan*/ * virtscsi_event_done ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC6 (struct virtio_scsi*) ; 
 int /*<<< orphan*/  FUNC7 (struct virtio_device*) ; 
 int /*<<< orphan*/ * virtscsi_req_done ; 

__attribute__((used)) static int FUNC8(struct virtio_device *vdev,
			 struct virtio_scsi *vscsi, int num_targets)
{
	int err;
	struct virtqueue *vqs[3];
	u32 i, sg_elems;

	vq_callback_t *callbacks[] = {
		virtscsi_ctrl_done,
		virtscsi_event_done,
		virtscsi_req_done
	};
	const char *names[] = {
		"control",
		"event",
		"request"
	};

	/* Discover virtqueues and write information to configuration.  */
	err = vdev->config->find_vqs(vdev, 3, vqs, callbacks, names);
	if (err)
		return err;

	FUNC5(&vscsi->ctrl_vq, vqs[0]);
	FUNC5(&vscsi->event_vq, vqs[1]);
	FUNC5(&vscsi->req_vq, vqs[2]);

	FUNC4(vdev, cdb_size, VIRTIO_SCSI_CDB_SIZE);
	FUNC4(vdev, sense_size, VIRTIO_SCSI_SENSE_SIZE);

	if (FUNC1(vdev, VIRTIO_SCSI_F_HOTPLUG))
		FUNC6(vscsi);

	/* We need to know how many segments before we allocate.  */
	sg_elems = FUNC3(vdev, seg_max) ?: 1;

	for (i = 0; i < num_targets; i++) {
		vscsi->tgt[i] = FUNC2(vdev, sg_elems);
		if (!vscsi->tgt[i]) {
			err = -ENOMEM;
			goto out;
		}
	}
	err = 0;

out:
	if (err)
		FUNC7(vdev);
	return err;
}