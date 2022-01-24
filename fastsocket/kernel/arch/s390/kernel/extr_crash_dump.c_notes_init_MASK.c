#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct save_area_s390x {scalar_t__ pref_reg; } ;
struct TYPE_6__ {struct save_area_s390x s390x; } ;
struct TYPE_5__ {unsigned long p_filesz; unsigned long p_memsz; int /*<<< orphan*/  p_offset; int /*<<< orphan*/  p_type; } ;
typedef  TYPE_1__ Elf64_Phdr ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,void*) ; 
 int /*<<< orphan*/  PT_NOTE ; 
 void* FUNC1 (void*,struct save_area_s390x*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (void*) ; 
 void* FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__** zfcpdump_save_areas ; 

__attribute__((used)) static void *FUNC6(Elf64_Phdr *phdr, void *ptr, u64 notes_offset)
{
	struct save_area_s390x *sa;
	void *ptr_start = ptr;
	int i;

	ptr = FUNC3(ptr);

	for (i = 0; zfcpdump_save_areas[i]; i++) {
		sa = &zfcpdump_save_areas[i]->s390x;
		if (sa->pref_reg == 0)
			continue;
		ptr = FUNC1(ptr, sa);
	}
	ptr = FUNC4(ptr);
	FUNC2(phdr, 0, sizeof(*phdr));
	phdr->p_type = PT_NOTE;
	phdr->p_offset = FUNC5(notes_offset);
	phdr->p_filesz = (unsigned long) FUNC0(ptr, ptr_start);
	phdr->p_memsz = phdr->p_filesz;
	return ptr;
}