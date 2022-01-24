#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dbe_list; void* dbe_end; void* dbe_start; } ;
struct module {TYPE_1__ arch; } ;
struct TYPE_8__ {size_t e_shstrndx; int e_shnum; } ;
struct TYPE_7__ {int sh_offset; int sh_name; int sh_size; scalar_t__ sh_addr; } ;
typedef  TYPE_2__ Elf_Shdr ;
typedef  TYPE_3__ Elf_Ehdr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dbe_list ; 
 int /*<<< orphan*/  dbe_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

int FUNC5(const Elf_Ehdr *hdr,
		    const Elf_Shdr *sechdrs,
		    struct module *me)
{
	const Elf_Shdr *s;
	char *secstrings = (void *)hdr + sechdrs[hdr->e_shstrndx].sh_offset;

	FUNC0(&me->arch.dbe_list);
	for (s = sechdrs; s < sechdrs + hdr->e_shnum; s++) {
		if (FUNC4("__dbe_table", secstrings + s->sh_name) != 0)
			continue;
		me->arch.dbe_start = (void *)s->sh_addr;
		me->arch.dbe_end = (void *)s->sh_addr + s->sh_size;
		FUNC2(&dbe_lock);
		FUNC1(&me->arch.dbe_list, &dbe_list);
		FUNC3(&dbe_lock);
	}
	return 0;
}