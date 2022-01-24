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
struct TYPE_7__ {scalar_t__ sh_type; int sh_size; } ;
struct section {TYPE_3__* symtab; TYPE_2__ shdr; TYPE_1__* link; } ;
struct TYPE_9__ {int e_shnum; } ;
struct TYPE_8__ {scalar_t__ st_shndx; int st_value; int st_size; int /*<<< orphan*/  st_other; int /*<<< orphan*/  st_info; } ;
struct TYPE_6__ {char* strtab; } ;
typedef  TYPE_3__ Elf32_Sym ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SHN_ABS ; 
 scalar_t__ SHT_SYMTAB ; 
 TYPE_5__ ehdr ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct section* secs ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,TYPE_3__*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
	int i;
	FUNC3("Absolute symbols\n");
	FUNC3(" Num:    Value Size  Type       Bind        Visibility  Name\n");
	for (i = 0; i < ehdr.e_shnum; i++) {
		struct section *sec = &secs[i];
		char *sym_strtab;
		Elf32_Sym *sh_symtab;
		int j;

		if (sec->shdr.sh_type != SHT_SYMTAB) {
			continue;
		}
		sh_symtab = sec->symtab;
		sym_strtab = sec->link->strtab;
		for (j = 0; j < sec->shdr.sh_size/sizeof(Elf32_Sym); j++) {
			Elf32_Sym *sym;
			const char *name;
			sym = &sec->symtab[j];
			name = FUNC5(sym_strtab, sym);
			if (sym->st_shndx != SHN_ABS) {
				continue;
			}
			FUNC3("%5d %08x %5d %10s %10s %12s %s\n",
				j, sym->st_value, sym->st_size,
				FUNC6(FUNC1(sym->st_info)),
				FUNC4(FUNC0(sym->st_info)),
				FUNC7(FUNC2(sym->st_other)),
				name);
		}
	}
	FUNC3("\n");
}