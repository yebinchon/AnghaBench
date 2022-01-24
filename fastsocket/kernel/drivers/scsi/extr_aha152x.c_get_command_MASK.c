#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int phase; int /*<<< orphan*/  buffers_residual; int /*<<< orphan*/  this_residual; } ;
struct TYPE_9__ {TYPE_2__ SCp; int /*<<< orphan*/ * cmnd; TYPE_1__* device; } ;
struct TYPE_7__ {int /*<<< orphan*/  lun; int /*<<< orphan*/  id; } ;
typedef  TYPE_3__ Scsi_Cmnd ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int aborted ; 
 int completed ; 
 int disconnected ; 
 int identified ; 
 int not_issued ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int selecting ; 
 int spiordy ; 
 int syncneg ; 

__attribute__((used)) static int FUNC4(char *pos, Scsi_Cmnd * ptr)
{
	char *start = pos;
	int i;

	FUNC2("0x%08x: target=%d; lun=%d; cmnd=( ",
		(unsigned int) ptr, ptr->device->id, ptr->device->lun);

	for (i = 0; i < FUNC0(ptr->cmnd[0]); i++)
		FUNC2("0x%02x ", ptr->cmnd[i]);

	FUNC2("); resid=%d; residual=%d; buffers=%d; phase |",
		FUNC3(ptr), ptr->SCp.this_residual,
		ptr->SCp.buffers_residual);

	if (ptr->SCp.phase & not_issued)
		FUNC2("not issued|");
	if (ptr->SCp.phase & selecting)
		FUNC2("selecting|");
	if (ptr->SCp.phase & disconnected)
		FUNC2("disconnected|");
	if (ptr->SCp.phase & aborted)
		FUNC2("aborted|");
	if (ptr->SCp.phase & identified)
		FUNC2("identified|");
	if (ptr->SCp.phase & completed)
		FUNC2("completed|");
	if (ptr->SCp.phase & spiordy)
		FUNC2("spiordy|");
	if (ptr->SCp.phase & syncneg)
		FUNC2("syncneg|");
	FUNC2("; next=0x%p\n", FUNC1(ptr));

	return (pos - start);
}