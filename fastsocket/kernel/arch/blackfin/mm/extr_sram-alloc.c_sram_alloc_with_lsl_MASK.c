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
struct sram_list_struct {size_t length; struct sram_list_struct* next; void* addr; } ;
struct TYPE_3__ {struct sram_list_struct* sram_list; } ;
struct mm_struct {TYPE_1__ context; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long L1_DATA_A_SRAM ; 
 unsigned long L1_DATA_B_SRAM ; 
 unsigned long L1_INST_SRAM ; 
 unsigned long L2_SRAM ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (struct sram_list_struct*) ; 
 struct sram_list_struct* FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (size_t) ; 
 void* FUNC3 (size_t) ; 
 void* FUNC4 (size_t) ; 
 void* FUNC5 (size_t) ; 

void *FUNC6(size_t size, unsigned long flags)
{
	void *addr = NULL;
	struct sram_list_struct *lsl = NULL;
	struct mm_struct *mm = current->mm;

	lsl = FUNC1(sizeof(struct sram_list_struct), GFP_KERNEL);
	if (!lsl)
		return NULL;

	if (flags & L1_INST_SRAM)
		addr = FUNC4(size);

	if (addr == NULL && (flags & L1_DATA_A_SRAM))
		addr = FUNC2(size);

	if (addr == NULL && (flags & L1_DATA_B_SRAM))
		addr = FUNC3(size);

	if (addr == NULL && (flags & L2_SRAM))
		addr = FUNC5(size);

	if (addr == NULL) {
		FUNC0(lsl);
		return NULL;
	}
	lsl->addr = addr;
	lsl->length = size;
	lsl->next = mm->context.sram_list;
	mm->context.sram_list = lsl;
	return addr;
}