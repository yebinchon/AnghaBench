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
struct scsi_host_template {char* proc_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct scsi_host_template*) ; 
 scalar_t__ FUNC1 (struct scsi_host_template*) ; 

__attribute__((used)) static int FUNC2(struct scsi_host_template * tpnt)
{
	tpnt->proc_name = "ultrastor";
	return FUNC0(tpnt) || FUNC1(tpnt);
}