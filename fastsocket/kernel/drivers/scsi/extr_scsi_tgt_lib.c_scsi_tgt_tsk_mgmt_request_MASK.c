#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct scsi_lun {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct scsi_lun*,void*) ; 

int FUNC2(struct Scsi_Host *shost, u64 itn_id,
			      int function, u64 tag, struct scsi_lun *scsilun,
			      void *data)
{
	int err;

	/* TODO: need to retry if this fails. */
	err = FUNC1(shost->host_no, itn_id,
					    function, tag, scsilun, data);
	if (err < 0)
		FUNC0("The task management request lost!\n");
	return err;
}