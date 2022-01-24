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
 int /*<<< orphan*/  EIC_NMIC_ENABLE ; 
 int /*<<< orphan*/  NMIC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ nmi_eic ; 
 int nmi_enabled ; 

int FUNC1(void)
{
	nmi_enabled = true;

	if (nmi_eic)
		FUNC0(nmi_eic, NMIC, EIC_NMIC_ENABLE);

	return 0;
}