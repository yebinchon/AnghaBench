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
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct mm_struct {TYPE_1__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMU_NO_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 struct mm_struct** context_mm ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,struct mm_struct*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/ * stale_map ; 

__attribute__((used)) static unsigned int FUNC4(unsigned int id)
{
	struct mm_struct *mm;
	int cpu = FUNC3();

	/* Pick up the victim mm */
	mm = context_mm[id];

	FUNC2(" | steal %d from 0x%p", id, mm);

	/* Flush the TLB for that context */
	FUNC1(mm);

	/* Mark this mm has having no context anymore */
	mm->context.id = MMU_NO_CONTEXT;

	/* XXX This clear should ultimately be part of local_flush_tlb_mm */
	FUNC0(id, stale_map[cpu]);

	return id;
}