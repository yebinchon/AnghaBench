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
struct scsi_ctrl_blk {scalar_t__ tastat; int /*<<< orphan*/  hastat; } ;
struct initio_host {struct scsi_ctrl_blk* active; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_BAD_PHAS ; 
 int /*<<< orphan*/  FUNC0 (struct initio_host*,struct scsi_ctrl_blk*) ; 
 int FUNC1 (struct initio_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct initio_host*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct initio_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct initio_host*,struct scsi_ctrl_blk*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct initio_host * host)
{
	struct scsi_ctrl_blk *scb;

	FUNC5("initio_bad_seg c=%d\n", host->index);

	if ((scb = host->active) != NULL) {
		FUNC4(host, scb);
		scb->hastat = HOST_BAD_PHAS;
		scb->tastat = 0;
		FUNC0(host, scb);
	}
	FUNC3(host);
	FUNC2(host, 8);	/* 7/29/98 */
	return FUNC1(host);
}