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
struct ipr_hostrcb {int dummy; } ;
struct ipr_ext_vpd {int /*<<< orphan*/ * wwid; int /*<<< orphan*/  vpd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipr_hostrcb*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct ipr_hostrcb*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(char *prefix, struct ipr_hostrcb *hostrcb,
				    struct ipr_ext_vpd *vpd)
{
	FUNC2(prefix, hostrcb, &vpd->vpd);
	FUNC1(hostrcb, "%s WWN: %08X%08X\n", prefix,
		     FUNC0(vpd->wwid[0]), FUNC0(vpd->wwid[1]));
}