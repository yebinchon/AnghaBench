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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct sgentry64 {int dummy; } ;
struct scsi_cmnd {int dummy; } ;
struct fib {TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  count; } ;
struct aac_read64 {TYPE_2__ sg; scalar_t__ flags; scalar_t__ pad; void* block; void* sector_count; void* cid; void* command; } ;
struct aac_fibhdr {int dummy; } ;
typedef  int /*<<< orphan*/  fib_callback ;
struct TYPE_3__ {int max_fib_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ContainerCommand64 ; 
 int /*<<< orphan*/  FsaNormal ; 
 int /*<<< orphan*/  VM_CtHostRead64 ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct fib*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct fib*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct fib*) ; 
 scalar_t__ io_callback ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC9(struct fib * fib, struct scsi_cmnd * cmd, u64 lba, u32 count)
{
	u16 fibsize;
	struct aac_read64 *readcmd;
	FUNC2(fib);
	readcmd = (struct aac_read64 *) FUNC6(fib);
	readcmd->command = FUNC5(VM_CtHostRead64);
	readcmd->cid = FUNC4(FUNC8(cmd));
	readcmd->sector_count = FUNC4(count);
	readcmd->block = FUNC5((u32)(lba&0xffffffff));
	readcmd->pad   = 0;
	readcmd->flags = 0;

	FUNC1(cmd, &readcmd->sg);
	fibsize = sizeof(struct aac_read64) +
		((FUNC7(readcmd->sg.count) - 1) *
		 sizeof (struct sgentry64));
	FUNC0 (fibsize > (fib->dev->max_fib_size -
				sizeof(struct aac_fibhdr)));
	/*
	 *	Now send the Fib to the adapter
	 */
	return FUNC3(ContainerCommand64,
			  fib,
			  fibsize,
			  FsaNormal,
			  0, 1,
			  (fib_callback) io_callback,
			  (void *) cmd);
}