#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_16__ {int dxfer_direction; int /*<<< orphan*/  duration; scalar_t__ cmd_len; scalar_t__ resid; scalar_t__ driver_status; scalar_t__ host_status; scalar_t__ info; scalar_t__ msg_status; scalar_t__ masked_status; scalar_t__ status; } ;
typedef  TYPE_3__ sg_io_hdr_t ;
struct TYPE_19__ {int /*<<< orphan*/  disk; TYPE_2__* device; scalar_t__ detached; } ;
struct TYPE_18__ {int /*<<< orphan*/  f_ref; TYPE_6__* parentdp; } ;
struct TYPE_14__ {unsigned char cmd_opcode; } ;
struct TYPE_17__ {TYPE_11__* rq; scalar_t__ bio; TYPE_1__ data; TYPE_3__ header; } ;
struct TYPE_15__ {int /*<<< orphan*/  request_queue; } ;
struct TYPE_13__ {int timeout; } ;
typedef  TYPE_4__ Sg_request ;
typedef  TYPE_5__ Sg_fd ;
typedef  TYPE_6__ Sg_device ;

/* Variables and functions */
 int DMA_BIDIRECTIONAL ; 
 int DMA_FROM_DEVICE ; 
 int DMA_NONE ; 
 int DMA_TO_DEVICE ; 
 int /*<<< orphan*/  EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
#define  SG_DXFER_FROM_DEV 131 
#define  SG_DXFER_TO_DEV 130 
#define  SG_DXFER_TO_FROM_DEV 129 
#define  SG_DXFER_UNKNOWN 128 
 int /*<<< orphan*/  FUNC1 (TYPE_11__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_11__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  sg_rq_end_io ; 
 int FUNC7 (TYPE_4__*,unsigned char*) ; 

__attribute__((used)) static int
FUNC8(Sg_fd * sfp, Sg_request * srp,
		unsigned char *cmnd, int timeout, int blocking)
{
	int k, data_dir;
	Sg_device *sdp = sfp->parentdp;
	sg_io_hdr_t *hp = &srp->header;

	srp->data.cmd_opcode = cmnd[0];	/* hold opcode of command */
	hp->status = 0;
	hp->masked_status = 0;
	hp->msg_status = 0;
	hp->info = 0;
	hp->host_status = 0;
	hp->driver_status = 0;
	hp->resid = 0;
	FUNC0(4, FUNC5("sg_common_write:  scsi opcode=0x%02x, cmd_size=%d\n",
			  (int) cmnd[0], (int) hp->cmd_len));

	k = FUNC7(srp, cmnd);
	if (k) {
		FUNC0(1, FUNC5("sg_common_write: start_req err=%d\n", k));
		FUNC6(srp);
		return k;	/* probably out of space --> ENOMEM */
	}
	if (sdp->detached) {
		if (srp->bio)
			FUNC1(srp->rq, -EIO);
		FUNC6(srp);
		return -ENODEV;
	}

	switch (hp->dxfer_direction) {
	case SG_DXFER_TO_FROM_DEV:
	case SG_DXFER_FROM_DEV:
		data_dir = DMA_FROM_DEVICE;
		break;
	case SG_DXFER_TO_DEV:
		data_dir = DMA_TO_DEVICE;
		break;
	case SG_DXFER_UNKNOWN:
		data_dir = DMA_BIDIRECTIONAL;
		break;
	default:
		data_dir = DMA_NONE;
		break;
	}
	hp->duration = FUNC3(jiffies);

	srp->rq->timeout = timeout;
	FUNC4(&sfp->f_ref); /* sg_rq_end_io() does kref_put(). */
	FUNC2(sdp->device->request_queue, sdp->disk,
			      srp->rq, 1, sg_rq_end_io);
	return 0;
}