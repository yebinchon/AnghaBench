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
typedef  enum phy_event { ____Placeholder_phy_event } phy_event ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * sas_phye_str ; 

void FUNC1(int phyid, enum phy_event pe)
{
	FUNC0("phy%d: phy event: %s\n", phyid, sas_phye_str[pe]);
}