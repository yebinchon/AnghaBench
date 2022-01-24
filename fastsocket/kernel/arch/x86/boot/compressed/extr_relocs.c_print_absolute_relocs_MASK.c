#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ sh_type; size_t sh_info; int sh_flags; int sh_size; } ;
struct section {char* strtab; TYPE_3__* reltab; TYPE_1__ shdr; struct section* link; TYPE_2__* symtab; } ;
struct TYPE_9__ {int e_shnum; } ;
struct TYPE_8__ {int r_info; int r_offset; } ;
struct TYPE_7__ {scalar_t__ st_shndx; int st_value; } ;
typedef  TYPE_2__ Elf32_Sym ;
typedef  TYPE_3__ Elf32_Rel ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int SHF_ALLOC ; 
 scalar_t__ SHN_ABS ; 
 scalar_t__ SHT_REL ; 
 TYPE_5__ ehdr ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 struct section* secs ; 
 char* FUNC5 (char*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(void)
{
	int i, printed = 0;

	for (i = 0; i < ehdr.e_shnum; i++) {
		struct section *sec = &secs[i];
		struct section *sec_applies, *sec_symtab;
		char *sym_strtab;
		Elf32_Sym *sh_symtab;
		int j;
		if (sec->shdr.sh_type != SHT_REL) {
			continue;
		}
		sec_symtab  = sec->link;
		sec_applies = &secs[sec->shdr.sh_info];
		if (!(sec_applies->shdr.sh_flags & SHF_ALLOC)) {
			continue;
		}
		sh_symtab  = sec_symtab->symtab;
		sym_strtab = sec_symtab->link->strtab;
		for (j = 0; j < sec->shdr.sh_size/sizeof(Elf32_Rel); j++) {
			Elf32_Rel *rel;
			Elf32_Sym *sym;
			const char *name;
			rel = &sec->reltab[j];
			sym = &sh_symtab[FUNC0(rel->r_info)];
			name = FUNC5(sym_strtab, sym);
			if (sym->st_shndx != SHN_ABS) {
				continue;
			}

			/* Absolute symbols are not relocated if bzImage is
			 * loaded at a non-compiled address. Display a warning
			 * to user at compile time about the absolute
			 * relocations present.
			 *
			 * User need to audit the code to make sure
			 * some symbols which should have been section
			 * relative have not become absolute because of some
			 * linker optimization or wrong programming usage.
			 *
			 * Before warning check if this absolute symbol
			 * relocation is harmless.
			 */
			if (FUNC2(name))
				continue;

			if (!printed) {
				FUNC3("WARNING: Absolute relocations"
					" present\n");
				FUNC3("Offset     Info     Type     Sym.Value "
					"Sym.Name\n");
				printed = 1;
			}

			FUNC3("%08x %08x %10s %08x  %s\n",
				rel->r_offset,
				rel->r_info,
				FUNC4(FUNC1(rel->r_info)),
				sym->st_value,
				name);
		}
	}

	if (printed)
		FUNC3("\n");
}