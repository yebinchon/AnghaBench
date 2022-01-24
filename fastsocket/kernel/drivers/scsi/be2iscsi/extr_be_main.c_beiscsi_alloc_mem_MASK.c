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
struct TYPE_6__ {scalar_t__ address; } ;
struct TYPE_7__ {TYPE_2__ a64; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
struct mem_array {unsigned int size; unsigned int num_elements; unsigned int size_in_bytes; struct mem_array* wrb_context; struct mem_array* mem_array; TYPE_4__ bus_address; int /*<<< orphan*/  virtual_address; } ;
struct hwi_wrb_context {int dummy; } ;
struct hwi_controller {unsigned int size; unsigned int num_elements; unsigned int size_in_bytes; struct hwi_controller* wrb_context; struct hwi_controller* mem_array; TYPE_4__ bus_address; int /*<<< orphan*/  virtual_address; } ;
struct TYPE_5__ {int hwi_ws_sz; int cxns_per_ctrl; } ;
struct beiscsi_hba {unsigned int* mem_req; struct mem_array* phwi_ctrlr; struct mem_array* init_mem; int /*<<< orphan*/  pcidev; TYPE_1__ params; } ;
struct be_mem_descriptor {unsigned int size; unsigned int num_elements; unsigned int size_in_bytes; struct be_mem_descriptor* wrb_context; struct be_mem_descriptor* mem_array; TYPE_4__ bus_address; int /*<<< orphan*/  virtual_address; } ;
typedef  scalar_t__ dma_addr_t ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 int BEISCSI_MAX_FRAGS_INIT ; 
 unsigned int BE_MIN_MEM_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int SE_MEM_MAX ; 
 int be_max_phys_size ; 
 struct mem_array* FUNC0 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_array*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mem_array*,struct mem_array*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mem_array*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC6 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned int FUNC9 (unsigned int) ; 

__attribute__((used)) static int FUNC10(struct beiscsi_hba *phba)
{
	dma_addr_t bus_add;
	struct hwi_controller *phwi_ctrlr;
	struct be_mem_descriptor *mem_descr;
	struct mem_array *mem_arr, *mem_arr_orig;
	unsigned int i, j, alloc_size, curr_alloc_size;

	phba->phwi_ctrlr = FUNC3(phba->params.hwi_ws_sz, GFP_KERNEL);
	if (!phba->phwi_ctrlr)
		return -ENOMEM;

	/* Allocate memory for wrb_context */
	phwi_ctrlr = phba->phwi_ctrlr;
	phwi_ctrlr->wrb_context = FUNC3(sizeof(struct hwi_wrb_context) *
					  phba->params.cxns_per_ctrl,
					  GFP_KERNEL);
	if (!phwi_ctrlr->wrb_context)
		return -ENOMEM;

	phba->init_mem = FUNC0(SE_MEM_MAX, sizeof(*mem_descr),
				 GFP_KERNEL);
	if (!phba->init_mem) {
		FUNC1(phwi_ctrlr->wrb_context);
		FUNC1(phba->phwi_ctrlr);
		return -ENOMEM;
	}

	mem_arr_orig = FUNC2(sizeof(*mem_arr_orig) * BEISCSI_MAX_FRAGS_INIT,
			       GFP_KERNEL);
	if (!mem_arr_orig) {
		FUNC1(phba->init_mem);
		FUNC1(phwi_ctrlr->wrb_context);
		FUNC1(phba->phwi_ctrlr);
		return -ENOMEM;
	}

	mem_descr = phba->init_mem;
	for (i = 0; i < SE_MEM_MAX; i++) {
		j = 0;
		mem_arr = mem_arr_orig;
		alloc_size = phba->mem_req[i];
		FUNC5(mem_arr, 0, sizeof(struct mem_array) *
		       BEISCSI_MAX_FRAGS_INIT);
		curr_alloc_size = FUNC6(be_max_phys_size * 1024, alloc_size);
		do {
			mem_arr->virtual_address = FUNC7(
							phba->pcidev,
							curr_alloc_size,
							&bus_add);
			if (!mem_arr->virtual_address) {
				if (curr_alloc_size <= BE_MIN_MEM_SIZE)
					goto free_mem;
				if (curr_alloc_size -
					FUNC9(curr_alloc_size))
					curr_alloc_size = FUNC9
							     (curr_alloc_size);
				else
					curr_alloc_size = curr_alloc_size / 2;
			} else {
				mem_arr->bus_address.u.
				    a64.address = (__u64) bus_add;
				mem_arr->size = curr_alloc_size;
				alloc_size -= curr_alloc_size;
				curr_alloc_size = FUNC6(be_max_phys_size *
						      1024, alloc_size);
				j++;
				mem_arr++;
			}
		} while (alloc_size);
		mem_descr->num_elements = j;
		mem_descr->size_in_bytes = phba->mem_req[i];
		mem_descr->mem_array = FUNC2(sizeof(*mem_arr) * j,
					       GFP_KERNEL);
		if (!mem_descr->mem_array)
			goto free_mem;

		FUNC4(mem_descr->mem_array, mem_arr_orig,
		       sizeof(struct mem_array) * j);
		mem_descr++;
	}
	FUNC1(mem_arr_orig);
	return 0;
free_mem:
	mem_descr->num_elements = j;
	while ((i) || (j)) {
		for (j = mem_descr->num_elements; j > 0; j--) {
			FUNC8(phba->pcidev,
					    mem_descr->mem_array[j - 1].size,
					    mem_descr->mem_array[j - 1].
					    virtual_address,
					    (unsigned long)mem_descr->
					    mem_array[j - 1].
					    bus_address.u.a64.address);
		}
		if (i) {
			i--;
			FUNC1(mem_descr->mem_array);
			mem_descr--;
		}
	}
	FUNC1(mem_arr_orig);
	FUNC1(phba->init_mem);
	FUNC1(phba->phwi_ctrlr->wrb_context);
	FUNC1(phba->phwi_ctrlr);
	return -ENOMEM;
}