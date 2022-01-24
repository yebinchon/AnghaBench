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
struct virtio_blk {int /*<<< orphan*/  pool; int /*<<< orphan*/ * sg; int /*<<< orphan*/  vq; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; void* ioprio; scalar_t__ sector; } ;
struct virtblk_req {TYPE_1__ out_hdr; struct request* req; TYPE_1__ status; TYPE_1__ in_hdr; } ;
struct request_queue {int dummy; } ;
struct request {int cmd_flags; int cmd_type; int cmd_len; TYPE_1__* sense; TYPE_1__* cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int REQ_FLUSH ; 
#define  REQ_TYPE_BLOCK_PC 130 
#define  REQ_TYPE_FS 129 
#define  REQ_TYPE_SPECIAL 128 
 int SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  VIRTIO_BLK_T_FLUSH ; 
 int /*<<< orphan*/  VIRTIO_BLK_T_GET_ID ; 
 int /*<<< orphan*/  VIRTIO_BLK_T_IN ; 
 int /*<<< orphan*/  VIRTIO_BLK_T_OUT ; 
 int /*<<< orphan*/  VIRTIO_BLK_T_SCSI_CMD ; 
 scalar_t__ WRITE ; 
 unsigned long FUNC1 (struct request_queue*,struct request*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 struct virtblk_req* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct virtblk_req*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct request*) ; 
 scalar_t__ FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,unsigned long,struct virtblk_req*) ; 

__attribute__((used)) static bool FUNC9(struct request_queue *q, struct virtio_blk *vblk,
		   struct request *req)
{
	unsigned long num, out = 0, in = 0;
	struct virtblk_req *vbr;

	vbr = FUNC3(vblk->pool, GFP_ATOMIC);
	if (!vbr)
		/* When another request finishes we'll try again. */
		return false;

	vbr->req = req;
	if (req->cmd_flags & REQ_FLUSH) {
		vbr->out_hdr.type = VIRTIO_BLK_T_FLUSH;
		vbr->out_hdr.sector = 0;
		vbr->out_hdr.ioprio = FUNC5(vbr->req);
	} else {
		switch (req->cmd_type) {
		case REQ_TYPE_FS:
			vbr->out_hdr.type = 0;
			vbr->out_hdr.sector = FUNC2(vbr->req);
			vbr->out_hdr.ioprio = FUNC5(vbr->req);
			break;
		case REQ_TYPE_BLOCK_PC:
			vbr->out_hdr.type = VIRTIO_BLK_T_SCSI_CMD;
			vbr->out_hdr.sector = 0;
			vbr->out_hdr.ioprio = FUNC5(vbr->req);
			break;
		case REQ_TYPE_SPECIAL:
			vbr->out_hdr.type = VIRTIO_BLK_T_GET_ID;
			vbr->out_hdr.sector = 0;
			vbr->out_hdr.ioprio = FUNC5(vbr->req);
			break;
		default:
			/* We don't put anything else in the queue. */
			FUNC0();
		}
	}

	FUNC7(&vblk->sg[out++], &vbr->out_hdr, sizeof(vbr->out_hdr));

	/*
	 * If this is a packet command we need a couple of additional headers.
	 * Behind the normal outhdr we put a segment with the scsi command
	 * block, and before the normal inhdr we put the sense data and the
	 * inhdr with additional status information before the normal inhdr.
	 */
	if (vbr->req->cmd_type == REQ_TYPE_BLOCK_PC)
		FUNC7(&vblk->sg[out++], vbr->req->cmd, vbr->req->cmd_len);

	num = FUNC1(q, vbr->req, vblk->sg + out);

	if (vbr->req->cmd_type == REQ_TYPE_BLOCK_PC) {
		FUNC7(&vblk->sg[num + out + in++], vbr->req->sense, SCSI_SENSE_BUFFERSIZE);
		FUNC7(&vblk->sg[num + out + in++], &vbr->in_hdr,
			   sizeof(vbr->in_hdr));
	}

	FUNC7(&vblk->sg[num + out + in++], &vbr->status,
		   sizeof(vbr->status));

	if (num) {
		if (FUNC6(vbr->req) == WRITE) {
			vbr->out_hdr.type |= VIRTIO_BLK_T_OUT;
			out += num;
		} else {
			vbr->out_hdr.type |= VIRTIO_BLK_T_IN;
			in += num;
		}
	}

	if (FUNC8(vblk->vq, vblk->sg, out, in, vbr) < 0) {
		FUNC4(vbr, vblk->pool);
		return false;
	}

	return true;
}