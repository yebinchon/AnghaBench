#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sgl_handle {int dummy; } ;
struct TYPE_2__ {int icds_per_ctrl; int ios_per_ctrl; } ;
struct beiscsi_hba {size_t eh_sgl_alloc_index; TYPE_1__ params; scalar_t__ eh_sgl_hndl_avbl; struct sgl_handle** eh_sgl_hndl_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_CONFIG ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,size_t) ; 

__attribute__((used)) static struct sgl_handle *FUNC1(struct beiscsi_hba *phba)
{
	struct sgl_handle *psgl_handle;

	if (phba->eh_sgl_hndl_avbl) {
		psgl_handle = phba->eh_sgl_hndl_base[phba->eh_sgl_alloc_index];
		phba->eh_sgl_hndl_base[phba->eh_sgl_alloc_index] = NULL;
		FUNC0(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
			    "BM_%d : mgmt_sgl_alloc_index=%d=0x%x\n",
			    phba->eh_sgl_alloc_index,
			    phba->eh_sgl_alloc_index);

		phba->eh_sgl_hndl_avbl--;
		if (phba->eh_sgl_alloc_index ==
		    (phba->params.icds_per_ctrl - phba->params.ios_per_ctrl -
		     1))
			phba->eh_sgl_alloc_index = 0;
		else
			phba->eh_sgl_alloc_index++;
	} else
		psgl_handle = NULL;
	return psgl_handle;
}