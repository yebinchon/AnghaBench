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
 int QL4_SCSI_ADAPTER_RESET ; 
 int QL4_SCSI_FIRMWARE_RESET ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 

__attribute__((used)) static int FUNC1(char *str)
{
	if (FUNC0(str, "adapter", 10) == 0)
		return QL4_SCSI_ADAPTER_RESET;
	else if (FUNC0(str, "firmware", 10) == 0)
		return QL4_SCSI_FIRMWARE_RESET;
	else
		return 0;
}