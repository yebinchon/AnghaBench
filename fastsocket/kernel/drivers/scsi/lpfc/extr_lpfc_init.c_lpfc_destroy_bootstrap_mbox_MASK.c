#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_4__* dmabuf; int /*<<< orphan*/  bmbx_size; } ;
struct TYPE_6__ {TYPE_3__ bmbx; } ;
struct lpfc_hba {TYPE_2__ sli4_hba; TYPE_1__* pcidev; } ;
struct lpfc_bmbx {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct lpfc_hba *phba)
{
	FUNC0(&phba->pcidev->dev,
			  phba->sli4_hba.bmbx.bmbx_size,
			  phba->sli4_hba.bmbx.dmabuf->virt,
			  phba->sli4_hba.bmbx.dmabuf->phys);

	FUNC1(phba->sli4_hba.bmbx.dmabuf);
	FUNC2(&phba->sli4_hba.bmbx, 0, sizeof(struct lpfc_bmbx));
}