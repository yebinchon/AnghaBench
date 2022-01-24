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
struct scsi_host_template {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct scsi_host_template*) ; 
 scalar_t__ fdomain ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct scsi_host_template *tpnt)
{
	if (fdomain)
		FUNC1(fdomain);
	return (FUNC0(tpnt) != NULL);
}