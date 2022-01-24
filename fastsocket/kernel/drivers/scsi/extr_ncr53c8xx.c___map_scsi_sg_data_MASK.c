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
struct scsi_cmnd {int __data_mapped; int __data_mapping; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC1(struct device *dev, struct scsi_cmnd *cmd)
{
	int use_sg;

	use_sg = FUNC0(cmd);
	if (!use_sg)
		return 0;

	cmd->__data_mapped = 2;
	cmd->__data_mapping = use_sg;

	return use_sg;
}