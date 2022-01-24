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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  MXC_DSM_CRM_CONTROL ; 
 int MXC_DSM_CRM_CTRL_LPMD0 ; 
 int MXC_DSM_CRM_CTRL_LPMD1 ; 
 int MXC_DSM_CRM_CTRL_LPMD_WAIT_MODE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	u32 crm_ctl;

	/* Go to WAIT mode after WFI */
	crm_ctl = FUNC0(MXC_DSM_CRM_CONTROL);
	crm_ctl &= ~(MXC_DSM_CRM_CTRL_LPMD0 | MXC_DSM_CRM_CTRL_LPMD1);
	crm_ctl |=  MXC_DSM_CRM_CTRL_LPMD_WAIT_MODE;
	FUNC1(crm_ctl, MXC_DSM_CRM_CONTROL);
}