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
typedef  scalar_t__ u64 ;
struct Scsi_Host {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 

int FUNC2(struct Scsi_Host *shost, u64 itn_id)
{
	int err;

	/* TODO: need to retry if this fails. */
	err = FUNC1(shost->host_no,
						    itn_id, 1, NULL);
	if (err < 0)
		FUNC0("The i_t_neuxs request lost, %d %llx!\n",
			shost->host_no, (unsigned long long)itn_id);
	return err;
}