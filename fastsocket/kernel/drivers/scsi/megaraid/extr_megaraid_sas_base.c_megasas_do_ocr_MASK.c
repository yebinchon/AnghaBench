#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct megasas_instance {int /*<<< orphan*/  work_init; int /*<<< orphan*/  fw_outstanding; scalar_t__ issuepend_done; int /*<<< orphan*/  adprecovery; TYPE_1__* instancet; int /*<<< orphan*/ * consumer; TYPE_2__* pdev; } ;
struct TYPE_4__ {scalar_t__ device; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* disable_intr ) (struct megasas_instance*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MEGASAS_ADPRESET_INPROG_SIGN ; 
 int /*<<< orphan*/  MEGASAS_ADPRESET_SM_INFAULT ; 
 scalar_t__ PCI_DEVICE_ID_DELL_PERC5 ; 
 scalar_t__ PCI_DEVICE_ID_LSI_SAS1064R ; 
 scalar_t__ PCI_DEVICE_ID_LSI_VERDE_ZCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct megasas_instance*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct megasas_instance*) ; 

void FUNC4(struct megasas_instance *instance)
{
	if ((instance->pdev->device == PCI_DEVICE_ID_LSI_SAS1064R) ||
	(instance->pdev->device == PCI_DEVICE_ID_DELL_PERC5) ||
	(instance->pdev->device == PCI_DEVICE_ID_LSI_VERDE_ZCR)) {
		*instance->consumer     = MEGASAS_ADPRESET_INPROG_SIGN;
	}
	instance->instancet->disable_intr(instance);
	instance->adprecovery   = MEGASAS_ADPRESET_SM_INFAULT;
	instance->issuepend_done = 0;

	FUNC0(&instance->fw_outstanding, 0);
	FUNC1(instance);
	FUNC2(&instance->work_init);
}