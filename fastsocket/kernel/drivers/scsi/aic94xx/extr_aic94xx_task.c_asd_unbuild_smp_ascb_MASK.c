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
struct TYPE_4__ {int /*<<< orphan*/  smp_resp; int /*<<< orphan*/  smp_req; } ;
struct sas_task {TYPE_2__ smp_task; } ;
struct asd_ascb {TYPE_1__* ha; struct sas_task* uldd_task; } ;
struct TYPE_3__ {int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct asd_ascb *a)
{
	struct sas_task *task = a->uldd_task;

	FUNC0(!task);
	FUNC1(a->ha->pcidev, &task->smp_task.smp_req, 1,
		     PCI_DMA_TODEVICE);
	FUNC1(a->ha->pcidev, &task->smp_task.smp_resp, 1,
		     PCI_DMA_FROMDEVICE);
}