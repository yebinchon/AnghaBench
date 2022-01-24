#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* ptr; int /*<<< orphan*/  phase; } ;
struct scsi_cmnd {TYPE_3__* device; TYPE_1__ SCp; } ;
struct fsa_dev_info {int valid; } ;
struct fib {int dummy; } ;
struct aac_query_mount {void* type; void* count; void* command; } ;
struct aac_dev {struct fsa_dev_info* fsa_dev; } ;
struct TYPE_6__ {TYPE_2__* host; } ;
struct TYPE_5__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  AAC_OWNER_FIRMWARE ; 
 int /*<<< orphan*/  ContainerCommand ; 
 int EINPROGRESS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FT_FILESYS ; 
 int /*<<< orphan*/  FsaNormal ; 
 int /*<<< orphan*/  VM_NameServe ; 
 int /*<<< orphan*/  _aac_probe_container1 ; 
 struct fib* FUNC0 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct fib*) ; 
 int /*<<< orphan*/  FUNC2 (struct fib*) ; 
 int /*<<< orphan*/  FUNC3 (struct fib*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct fib*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct fib*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*) ; 
 int FUNC8 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC9(struct scsi_cmnd * scsicmd, int (*callback)(struct scsi_cmnd *))
{
	struct fib * fibptr;
	int status = -ENOMEM;

	if ((fibptr = FUNC0((struct aac_dev *)scsicmd->device->host->hostdata))) {
		struct aac_query_mount *dinfo;

		FUNC3(fibptr);

		dinfo = (struct aac_query_mount *)FUNC6(fibptr);

		dinfo->command = FUNC5(VM_NameServe);
		dinfo->count = FUNC5(FUNC7(scsicmd));
		dinfo->type = FUNC5(FT_FILESYS);
		scsicmd->SCp.ptr = (char *)callback;

		status = FUNC4(ContainerCommand,
			  fibptr,
			  sizeof(struct aac_query_mount),
			  FsaNormal,
			  0, 1,
			  _aac_probe_container1,
			  (void *) scsicmd);
		/*
		 *	Check that the command queued to the controller
		 */
		if (status == -EINPROGRESS) {
			scsicmd->SCp.phase = AAC_OWNER_FIRMWARE;
			return 0;
		}
		if (status < 0) {
			scsicmd->SCp.ptr = NULL;
			FUNC1(fibptr);
			FUNC2(fibptr);
		}
	}
	if (status < 0) {
		struct fsa_dev_info *fsa_dev_ptr = ((struct aac_dev *)(scsicmd->device->host->hostdata))->fsa_dev;
		if (fsa_dev_ptr) {
			fsa_dev_ptr += FUNC7(scsicmd);
			if ((fsa_dev_ptr->valid & 1) == 0) {
				fsa_dev_ptr->valid = 0;
				return (*callback)(scsicmd);
			}
		}
	}
	return status;
}