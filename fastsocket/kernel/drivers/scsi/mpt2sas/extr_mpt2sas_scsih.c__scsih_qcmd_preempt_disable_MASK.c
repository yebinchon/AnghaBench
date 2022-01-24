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
struct scsi_cmnd {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct scsi_cmnd*,void (*) (struct scsi_cmnd*)) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int
FUNC3(struct scsi_cmnd *scmd, void (*done)(struct scsi_cmnd *))
{
	int ret;
	FUNC1();
	ret = FUNC0(scmd, done);
	FUNC2();
	return ret;
}