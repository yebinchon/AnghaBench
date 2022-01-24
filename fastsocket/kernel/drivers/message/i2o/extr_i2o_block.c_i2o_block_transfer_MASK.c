#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct request {int /*<<< orphan*/  q; struct i2o_block_request* special; TYPE_1__* rq_disk; } ;
struct TYPE_10__ {void* tcntxt; void* icntxt; } ;
struct TYPE_11__ {int* head; TYPE_4__ s; } ;
struct i2o_message {int* body; TYPE_5__ u; } ;
struct i2o_controller {scalar_t__ adaptec; } ;
struct i2o_block_request {int /*<<< orphan*/  queue; } ;
struct i2o_block_device {int rcache; int wcache; int /*<<< orphan*/  open_queue_depth; int /*<<< orphan*/  open_queue; TYPE_3__* i2o_dev; } ;
struct TYPE_12__ {int context; } ;
struct TYPE_8__ {int tid; } ;
struct TYPE_9__ {struct i2o_controller* iop; TYPE_2__ lct_data; } ;
struct TYPE_7__ {struct i2o_block_device* private_data; } ;

/* Variables and functions */
#define  CACHE_PREFETCH 133 
#define  CACHE_SMARTBACK 132 
#define  CACHE_SMARTFETCH 131 
#define  CACHE_SMARTTHROUGH 130 
#define  CACHE_WRITEBACK 129 
#define  CACHE_WRITETHROUGH 128 
 int ENODEV ; 
 int ENOMEM ; 
 int HOST_TID ; 
 int I2O_CMD_BLOCK_READ ; 
 int I2O_CMD_BLOCK_WRITE ; 
 int I2O_CMD_PRIVATE ; 
 int I2O_CMD_SCSI_EXEC ; 
 int FUNC0 (int) ; 
 int I2O_VENDOR_DPT ; 
 scalar_t__ FUNC1 (struct i2o_message*) ; 
 int KERNEL_SECTOR_SHIFT ; 
 int FUNC2 (struct i2o_message*) ; 
 scalar_t__ READ ; 
 int /*<<< orphan*/  READ_10 ; 
 int SGL_OFFSET_12 ; 
 int SGL_OFFSET_8 ; 
 int /*<<< orphan*/  WRITE_10 ; 
 int FUNC3 (struct request*) ; 
 int FUNC4 (struct request*) ; 
 int FUNC5 (struct request*) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 void* FUNC8 (int) ; 
 TYPE_6__ i2o_block_driver ; 
 int /*<<< orphan*/  FUNC9 (struct i2o_controller*,struct i2o_block_request*,int**) ; 
 int FUNC10 (struct i2o_controller*,struct request*) ; 
 int /*<<< orphan*/  FUNC11 (struct i2o_controller*,struct request*) ; 
 struct i2o_message* FUNC12 (struct i2o_controller*) ; 
 int /*<<< orphan*/  FUNC13 (struct i2o_controller*,struct i2o_message*) ; 
 int /*<<< orphan*/  FUNC14 (struct i2o_controller*,struct i2o_message*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct request*) ; 
 scalar_t__ FUNC21 (int) ; 

__attribute__((used)) static int FUNC22(struct request *req)
{
	struct i2o_block_device *dev = req->rq_disk->private_data;
	struct i2o_controller *c;
	u32 tid = dev->i2o_dev->lct_data.tid;
	struct i2o_message *msg;
	u32 *mptr;
	struct i2o_block_request *ireq = req->special;
	u32 tcntxt;
	u32 sgl_offset = SGL_OFFSET_8;
	u32 ctl_flags = 0x00000000;
	int rc;
	u32 cmd;

	if (FUNC21(!dev->i2o_dev)) {
		FUNC18("transfer to removed drive\n");
		rc = -ENODEV;
		goto exit;
	}

	c = dev->i2o_dev->iop;

	msg = FUNC12(c);
	if (FUNC1(msg)) {
		rc = FUNC2(msg);
		goto exit;
	}

	tcntxt = FUNC10(c, req);
	if (!tcntxt) {
		rc = -ENOMEM;
		goto nop_msg;
	}

	msg->u.s.icntxt = FUNC8(i2o_block_driver.context);
	msg->u.s.tcntxt = FUNC8(tcntxt);

	mptr = &msg->body[0];

	if (FUNC20(req) == READ) {
		cmd = I2O_CMD_BLOCK_READ << 24;

		switch (dev->rcache) {
		case CACHE_PREFETCH:
			ctl_flags = 0x201F0008;
			break;

		case CACHE_SMARTFETCH:
			if (FUNC5(req) > 16)
				ctl_flags = 0x201F0008;
			else
				ctl_flags = 0x001F0000;
			break;

		default:
			break;
		}
	} else {
		cmd = I2O_CMD_BLOCK_WRITE << 24;

		switch (dev->wcache) {
		case CACHE_WRITETHROUGH:
			ctl_flags = 0x001F0008;
			break;
		case CACHE_WRITEBACK:
			ctl_flags = 0x001F0010;
			break;
		case CACHE_SMARTBACK:
			if (FUNC5(req) > 16)
				ctl_flags = 0x001F0004;
			else
				ctl_flags = 0x001F0010;
			break;
		case CACHE_SMARTTHROUGH:
			if (FUNC5(req) > 16)
				ctl_flags = 0x001F0004;
			else
				ctl_flags = 0x001F0010;
		default:
			break;
		}
	}

#ifdef CONFIG_I2O_EXT_ADAPTEC
	if (c->adaptec) {
		u8 cmd[10];
		u32 scsi_flags;
		u16 hwsec;

		hwsec = queue_logical_block_size(req->q) >> KERNEL_SECTOR_SHIFT;
		memset(cmd, 0, 10);

		sgl_offset = SGL_OFFSET_12;

		msg->u.head[1] =
		    cpu_to_le32(I2O_CMD_PRIVATE << 24 | HOST_TID << 12 | tid);

		*mptr++ = cpu_to_le32(I2O_VENDOR_DPT << 16 | I2O_CMD_SCSI_EXEC);
		*mptr++ = cpu_to_le32(tid);

		/*
		 * ENABLE_DISCONNECT
		 * SIMPLE_TAG
		 * RETURN_SENSE_DATA_IN_REPLY_MESSAGE_FRAME
		 */
		if (rq_data_dir(req) == READ) {
			cmd[0] = READ_10;
			scsi_flags = 0x60a0000a;
		} else {
			cmd[0] = WRITE_10;
			scsi_flags = 0xa0a0000a;
		}

		*mptr++ = cpu_to_le32(scsi_flags);

		*((u32 *) & cmd[2]) = cpu_to_be32(blk_rq_pos(req) * hwsec);
		*((u16 *) & cmd[7]) = cpu_to_be16(blk_rq_sectors(req) * hwsec);

		memcpy(mptr, cmd, 10);
		mptr += 4;
		*mptr++ = cpu_to_le32(blk_rq_bytes(req));
	} else
#endif
	{
		msg->u.head[1] = FUNC8(cmd | HOST_TID << 12 | tid);
		*mptr++ = FUNC8(ctl_flags);
		*mptr++ = FUNC8(FUNC3(req));
		*mptr++ =
		    FUNC8((u32) (FUNC4(req) << KERNEL_SECTOR_SHIFT));
		*mptr++ =
		    FUNC8(FUNC4(req) >> (32 - KERNEL_SECTOR_SHIFT));
	}

	if (!FUNC9(c, ireq, &mptr)) {
		rc = -ENOMEM;
		goto context_remove;
	}

	msg->u.head[0] =
	    FUNC8(FUNC0(mptr - &msg->u.head[0]) | sgl_offset);

	FUNC15(&ireq->queue, &dev->open_queue);
	dev->open_queue_depth++;

	FUNC14(c, msg);

	return 0;

      context_remove:
	FUNC11(c, req);

      nop_msg:
	FUNC13(c, msg);

      exit:
	return rc;
}