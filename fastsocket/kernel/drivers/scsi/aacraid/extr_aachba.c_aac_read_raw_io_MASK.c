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
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct sgentryraw {int dummy; } ;
struct sge_ieee1212 {int dummy; } ;
struct scsi_cmnd {int dummy; } ;
struct fib {struct aac_dev* dev; } ;
struct aac_raw_io2 {int /*<<< orphan*/  sgeCnt; void* flags; void* cid; void* byteCount; void* blockHigh; void* blockLow; } ;
struct TYPE_4__ {int /*<<< orphan*/  count; } ;
struct aac_raw_io {TYPE_2__ sg; scalar_t__ bpComplete; scalar_t__ bpTotal; void* flags; void* cid; void* count; void** block; } ;
struct aac_fibhdr {int dummy; } ;
struct aac_dev {scalar_t__ comm_interface; int max_fib_size; TYPE_1__* scsi_host_ptr; int /*<<< orphan*/  sync_mode; } ;
typedef  int /*<<< orphan*/  fib_callback ;
struct TYPE_3__ {int /*<<< orphan*/  sg_tablesize; } ;

/* Variables and functions */
 scalar_t__ AAC_COMM_MESSAGE_TYPE2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ContainerRawIo ; 
 int ContainerRawIo2 ; 
 int /*<<< orphan*/  FsaNormal ; 
 int /*<<< orphan*/  RIO2_IO_TYPE_READ ; 
 int /*<<< orphan*/  RIO_TYPE_READ ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*,struct aac_raw_io2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fib*) ; 
 int FUNC4 (int,struct fib*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct fib*) ; 
 scalar_t__ io_callback ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct aac_raw_io2*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC11(struct fib * fib, struct scsi_cmnd * cmd, u64 lba, u32 count)
{
	struct aac_dev *dev = fib->dev;
	u16 fibsize, command;

	FUNC3(fib);
	if (dev->comm_interface == AAC_COMM_MESSAGE_TYPE2 && !dev->sync_mode) {
		struct aac_raw_io2 *readcmd2;
		readcmd2 = (struct aac_raw_io2 *) FUNC7(fib);
		FUNC9(readcmd2, 0, sizeof(struct aac_raw_io2));
		readcmd2->blockLow = FUNC6((u32)(lba&0xffffffff));
		readcmd2->blockHigh = FUNC6((u32)((lba&0xffffffff00000000LL)>>32));
		readcmd2->byteCount = FUNC6(count<<9);
		readcmd2->cid = FUNC5(FUNC10(cmd));
		readcmd2->flags = FUNC5(RIO2_IO_TYPE_READ);
		FUNC2(cmd, readcmd2, dev->scsi_host_ptr->sg_tablesize);
		command = ContainerRawIo2;
		fibsize = sizeof(struct aac_raw_io2) +
			((FUNC8(readcmd2->sgeCnt)-1) * sizeof(struct sge_ieee1212));
	} else {
		struct aac_raw_io *readcmd;
		readcmd = (struct aac_raw_io *) FUNC7(fib);
		readcmd->block[0] = FUNC6((u32)(lba&0xffffffff));
		readcmd->block[1] = FUNC6((u32)((lba&0xffffffff00000000LL)>>32));
		readcmd->count = FUNC6(count<<9);
		readcmd->cid = FUNC5(FUNC10(cmd));
		readcmd->flags = FUNC5(RIO_TYPE_READ);
		readcmd->bpTotal = 0;
		readcmd->bpComplete = 0;
		FUNC1(cmd, &readcmd->sg);
		command = ContainerRawIo;
		fibsize = sizeof(struct aac_raw_io) +
			((FUNC8(readcmd->sg.count)-1) * sizeof(struct sgentryraw));
	}

	FUNC0(fibsize > (fib->dev->max_fib_size - sizeof(struct aac_fibhdr)));
	/*
	 *	Now send the Fib to the adapter
	 */
	return FUNC4(command,
			  fib,
			  fibsize,
			  FsaNormal,
			  0, 1,
			  (fib_callback) io_callback,
			  (void *) cmd);
}