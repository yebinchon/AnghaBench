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

/* Variables and functions */
 int /*<<< orphan*/  SCSI_DEVINFO_GLOBAL ; 
 int FUNC0 (int,char*,char*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(int compatible, char *vendor, char *model,
			    char *strflags, int flags)
{
	return FUNC0(compatible, vendor, model,
					    strflags, flags,
					    SCSI_DEVINFO_GLOBAL);
}