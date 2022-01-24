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
struct scsi_device {int no_uld_attach; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int FUNC0 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_device*,char*,char*) ; 

__attribute__((used)) static void
FUNC2(struct scsi_device *sdev, void *no_uld_attach)
{
	int rc;
	sdev->no_uld_attach = no_uld_attach ? 1 : 0;
	FUNC1(KERN_INFO, sdev, "%s raid component\n",
	    sdev->no_uld_attach ? "hidding" : "exposing");
	rc = FUNC0(sdev);
}