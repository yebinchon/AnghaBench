#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct virtqueue {TYPE_1__* vdev; } ;
struct virtio_blk {TYPE_3__* disk; int /*<<< orphan*/  pool; int /*<<< orphan*/  vq; } ;
struct TYPE_7__ {int errors; int /*<<< orphan*/  sense_len; int /*<<< orphan*/  residual; } ;
struct virtblk_req {int status; TYPE_5__* req; TYPE_2__ in_hdr; } ;
struct TYPE_10__ {scalar_t__ cmd_type; int errors; int /*<<< orphan*/  sense_len; int /*<<< orphan*/  resid_len; } ;
struct TYPE_9__ {int /*<<< orphan*/  queue_lock; } ;
struct TYPE_8__ {TYPE_4__* queue; } ;
struct TYPE_6__ {struct virtio_blk* priv; } ;

/* Variables and functions */
 int EIO ; 
 int ENOTTY ; 
 scalar_t__ REQ_TYPE_BLOCK_PC ; 
 scalar_t__ REQ_TYPE_SPECIAL ; 
#define  VIRTIO_BLK_S_OK 129 
#define  VIRTIO_BLK_S_UNSUPP 128 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (struct virtblk_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 struct virtblk_req* FUNC5 (int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static void FUNC6(struct virtqueue *vq)
{
	struct virtio_blk *vblk = vq->vdev->priv;
	struct virtblk_req *vbr;
	unsigned int len;
	unsigned long flags;

	FUNC3(vblk->disk->queue->queue_lock, flags);
	while ((vbr = FUNC5(vblk->vq, &len)) != NULL) {
		int error;

		switch (vbr->status) {
		case VIRTIO_BLK_S_OK:
			error = 0;
			break;
		case VIRTIO_BLK_S_UNSUPP:
			error = -ENOTTY;
			break;
		default:
			error = -EIO;
			break;
		}

		if (vbr->req->cmd_type == REQ_TYPE_BLOCK_PC) {
			vbr->req->resid_len = vbr->in_hdr.residual;
			vbr->req->sense_len = vbr->in_hdr.sense_len;
			vbr->req->errors = vbr->in_hdr.errors;
		}
		if (vbr->req->cmd_type == REQ_TYPE_SPECIAL)
			vbr->req->errors = (error != 0);

		FUNC0(vbr->req, error);
		FUNC2(vbr, vblk->pool);
	}
	/* In case queue is stopped waiting for more buffers. */
	FUNC1(vblk->disk->queue);
	FUNC4(vblk->disk->queue->queue_lock, flags);
}