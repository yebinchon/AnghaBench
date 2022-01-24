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
struct TYPE_6__ {void* bss_l2; void* data_l2; void* text_l2; void* bss_b_l1; void* data_b_l1; void* bss_a_l1; void* data_a_l1; void* text_l1; } ;
struct module {int /*<<< orphan*/  name; TYPE_1__ arch; } ;
struct TYPE_8__ {int e_shnum; int e_flags; } ;
struct TYPE_7__ {int sh_name; scalar_t__ sh_size; unsigned long sh_addr; int /*<<< orphan*/  sh_flags; } ;
typedef  TYPE_2__ Elf_Shdr ;
typedef  TYPE_3__ Elf_Ehdr ;

/* Variables and functions */
 int EF_BFIN_CODE_IN_L1 ; 
 int EF_BFIN_CODE_IN_L2 ; 
 int EF_BFIN_DATA_IN_L1 ; 
 int EF_BFIN_DATA_IN_L2 ; 
 int /*<<< orphan*/  SHF_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (void*,void*,scalar_t__) ; 
 void* FUNC1 (scalar_t__) ; 
 void* FUNC2 (scalar_t__) ; 
 void* FUNC3 (scalar_t__) ; 
 void* FUNC4 (scalar_t__) ; 
 void* FUNC5 (scalar_t__) ; 
 void* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 

int
FUNC11(Elf_Ehdr *hdr, Elf_Shdr *sechdrs,
			  char *secstrings, struct module *mod)
{
	/*
	 * XXX: sechdrs are vmalloced in kernel/module.c
	 * and would be vfreed just after module is loaded,
	 * so we hack to keep the only information we needed
	 * in mod->arch to correctly free L1 I/D sram later.
	 * NOTE: this breaks the semantic of mod->arch structure.
	 */
	Elf_Shdr *s, *sechdrs_end = sechdrs + hdr->e_shnum;
	void *dest;

	for (s = sechdrs; s < sechdrs_end; ++s) {
		const char *shname = secstrings + s->sh_name;

		if (s->sh_size == 0)
			continue;

		if (!FUNC10(".l1.text", shname) ||
		    (!FUNC10(".text", shname) &&
		     (hdr->e_flags & EF_BFIN_CODE_IN_L1))) {

			dest = FUNC4(s->sh_size);
			mod->arch.text_l1 = dest;
			if (dest == NULL) {
				FUNC9("L1 inst memory allocation failed\n",
					mod->name);
				return -1;
			}
			FUNC0(dest, (void *)s->sh_addr, s->sh_size);

		} else if (!FUNC10(".l1.data", shname) ||
		           (!FUNC10(".data", shname) &&
		            (hdr->e_flags & EF_BFIN_DATA_IN_L1))) {

			dest = FUNC2(s->sh_size);
			mod->arch.data_a_l1 = dest;
			if (dest == NULL) {
				FUNC9("L1 data memory allocation failed\n",
					mod->name);
				return -1;
			}
			FUNC7(dest, (void *)s->sh_addr, s->sh_size);

		} else if (!FUNC10(".l1.bss", shname) ||
		           (!FUNC10(".bss", shname) &&
		            (hdr->e_flags & EF_BFIN_DATA_IN_L1))) {

			dest = FUNC3(s->sh_size);
			mod->arch.bss_a_l1 = dest;
			if (dest == NULL) {
				FUNC9("L1 data memory allocation failed\n",
					mod->name);
				return -1;
			}

		} else if (!FUNC10(".l1.data.B", shname)) {

			dest = FUNC1(s->sh_size);
			mod->arch.data_b_l1 = dest;
			if (dest == NULL) {
				FUNC9("L1 data memory allocation failed\n",
					mod->name);
				return -1;
			}
			FUNC7(dest, (void *)s->sh_addr, s->sh_size);

		} else if (!FUNC10(".l1.bss.B", shname)) {

			dest = FUNC1(s->sh_size);
			mod->arch.bss_b_l1 = dest;
			if (dest == NULL) {
				FUNC9("L1 data memory allocation failed\n",
					mod->name);
				return -1;
			}
			FUNC8(dest, 0, s->sh_size);

		} else if (!FUNC10(".l2.text", shname) ||
		           (!FUNC10(".text", shname) &&
		            (hdr->e_flags & EF_BFIN_CODE_IN_L2))) {

			dest = FUNC5(s->sh_size);
			mod->arch.text_l2 = dest;
			if (dest == NULL) {
				FUNC9("L2 SRAM allocation failed\n",
					mod->name);
				return -1;
			}
			FUNC7(dest, (void *)s->sh_addr, s->sh_size);

		} else if (!FUNC10(".l2.data", shname) ||
		           (!FUNC10(".data", shname) &&
		            (hdr->e_flags & EF_BFIN_DATA_IN_L2))) {

			dest = FUNC5(s->sh_size);
			mod->arch.data_l2 = dest;
			if (dest == NULL) {
				FUNC9("L2 SRAM allocation failed\n",
					mod->name);
				return -1;
			}
			FUNC7(dest, (void *)s->sh_addr, s->sh_size);

		} else if (!FUNC10(".l2.bss", shname) ||
		           (!FUNC10(".bss", shname) &&
		            (hdr->e_flags & EF_BFIN_DATA_IN_L2))) {

			dest = FUNC6(s->sh_size);
			mod->arch.bss_l2 = dest;
			if (dest == NULL) {
				FUNC9("L2 SRAM allocation failed\n",
					mod->name);
				return -1;
			}

		} else
			continue;

		s->sh_flags &= ~SHF_ALLOC;
		s->sh_addr = (unsigned long)dest;
	}

	return 0;
}