#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct beiscsi_hba {struct be_mem_descriptor* phwi_ctrlr; struct be_mem_descriptor* init_mem; int /*<<< orphan*/  pcidev; } ;
struct TYPE_4__ {scalar_t__ address; } ;
struct TYPE_5__ {TYPE_1__ a64; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct be_mem_descriptor {int num_elements; struct be_mem_descriptor* wrb_context; struct be_mem_descriptor* mem_array; TYPE_3__ bus_address; int /*<<< orphan*/  virtual_address; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int SE_MEM_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct be_mem_descriptor*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct beiscsi_hba *phba)
{
	struct be_mem_descriptor *mem_descr;
	int i, j;

	mem_descr = phba->init_mem;
	i = 0;
	j = 0;
	for (i = 0; i < SE_MEM_MAX; i++) {
		for (j = mem_descr->num_elements; j > 0; j--) {
			FUNC1(phba->pcidev,
			  mem_descr->mem_array[j - 1].size,
			  mem_descr->mem_array[j - 1].virtual_address,
			  (unsigned long)mem_descr->mem_array[j - 1].
			  bus_address.u.a64.address);
		}
		FUNC0(mem_descr->mem_array);
		mem_descr++;
	}
	FUNC0(phba->init_mem);
	FUNC0(phba->phwi_ctrlr->wrb_context);
	FUNC0(phba->phwi_ctrlr);
}