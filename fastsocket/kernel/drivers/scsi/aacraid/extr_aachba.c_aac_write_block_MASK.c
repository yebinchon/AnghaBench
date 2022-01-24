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
struct sgentry {int dummy; } ;
struct scsi_cmnd {int dummy; } ;
struct fib {TYPE_1__* dev; } ;
struct TYPE_4__ {void* count; } ;
struct aac_write {TYPE_2__ sg; void* count; void* block; void* cid; void* command; } ;
struct aac_fibhdr {int dummy; } ;
typedef  int /*<<< orphan*/  fib_callback ;
struct TYPE_3__ {int max_fib_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ContainerCommand ; 
 int /*<<< orphan*/  FsaNormal ; 
 int VM_CtBlockWrite ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct fib*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct fib*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*) ; 
 void* FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct fib*) ; 
 scalar_t__ io_callback ; 
 int FUNC6 (void*) ; 
 int FUNC7 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC8(struct fib * fib, struct scsi_cmnd * cmd, u64 lba, u32 count, int fua)
{
	u16 fibsize;
	struct aac_write *writecmd;
	FUNC2(fib);
	writecmd = (struct aac_write *) FUNC5(fib);
	writecmd->command = FUNC4(VM_CtBlockWrite);
	writecmd->cid = FUNC4(FUNC7(cmd));
	writecmd->block = FUNC4((u32)(lba&0xffffffff));
	writecmd->count = FUNC4(count * 512);
	writecmd->sg.count = FUNC4(1);
	/* ->stable is not used - it did mean which type of write */

	FUNC1(cmd, &writecmd->sg);
	fibsize = sizeof(struct aac_write) +
		((FUNC6(writecmd->sg.count) - 1) *
		 sizeof (struct sgentry));
	FUNC0 (fibsize > (fib->dev->max_fib_size -
				sizeof(struct aac_fibhdr)));
	/*
	 *	Now send the Fib to the adapter
	 */
	return FUNC3(ContainerCommand,
			  fib,
			  fibsize,
			  FsaNormal,
			  0, 1,
			  (fib_callback) io_callback,
			  (void *) cmd);
}