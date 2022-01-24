#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct module {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {unsigned long r_offset; int /*<<< orphan*/  r_info; scalar_t__ r_addend; } ;
struct TYPE_6__ {unsigned long st_value; } ;
struct TYPE_5__ {unsigned long sh_addr; size_t sh_info; int sh_size; } ;
typedef  TYPE_1__ Elf_Shdr ;
typedef  TYPE_2__ Elf32_Sym ;
typedef  TYPE_3__ Elf32_Rela ;

/* Variables and functions */
#define  BFIN_MEM_ACCESS_CORE 140 
#define  BFIN_MEM_ACCESS_CORE_ONLY 139 
#define  BFIN_MEM_ACCESS_DMA 138 
#define  BFIN_MEM_ACCESS_ITEST 137 
 unsigned long COREB_L1_DATA_A_START ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int ENOEXEC ; 
#define  R_BFIN_BYTE4_DATA 136 
#define  R_BFIN_HUIMM16 135 
#define  R_BFIN_LUIMM16 134 
#define  R_BFIN_PCREL10 133 
#define  R_BFIN_PCREL12_JUMP 132 
#define  R_BFIN_PCREL12_JUMP_S 131 
#define  R_BFIN_PCREL24 130 
#define  R_BFIN_PCREL24_JUMP_L 129 
#define  R_BFIN_RIMM16 128 
 int FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (void*,unsigned long*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (void*,unsigned long*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (void*,unsigned long*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,unsigned long,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,unsigned long) ; 

int
FUNC8(Elf_Shdr *sechdrs, const char *strtab,
		   unsigned int symindex, unsigned int relsec,
		   struct module *mod)
{
	unsigned int i;
	Elf32_Rela *rel = (void *)sechdrs[relsec].sh_addr;
	Elf32_Sym *sym;
	unsigned long location, value, size;

	FUNC6("applying relocate section %u to %u\n", mod->name,
		relsec, sechdrs[relsec].sh_info);

	for (i = 0; i < sechdrs[relsec].sh_size / sizeof(*rel); i++) {
		/* This is where to make the change */
		location = sechdrs[sechdrs[relsec].sh_info].sh_addr +
		           rel[i].r_offset;

		/* This is the symbol it is referring to. Note that all
		   undefined symbols have been resolved. */
		sym = (Elf32_Sym *) sechdrs[symindex].sh_addr
		    + FUNC0(rel[i].r_info);
		value = sym->st_value;
		value += rel[i].r_addend;

#ifdef CONFIG_SMP
		if (location >= COREB_L1_DATA_A_START) {
			pr_err("cannot relocate in L1: %u (SMP kernel)",
				mod->name, ELF32_R_TYPE(rel[i].r_info));
			return -ENOEXEC;
		}
#endif

		FUNC6("location is %lx, value is %lx type is %d\n",
			mod->name, location, value, FUNC1(rel[i].r_info));

		switch (FUNC1(rel[i].r_info)) {

		case R_BFIN_HUIMM16:
			value >>= 16;
		case R_BFIN_LUIMM16:
		case R_BFIN_RIMM16:
			size = 2;
			break;
		case R_BFIN_BYTE4_DATA:
			size = 4;
			break;

		case R_BFIN_PCREL24:
		case R_BFIN_PCREL24_JUMP_L:
		case R_BFIN_PCREL12_JUMP:
		case R_BFIN_PCREL12_JUMP_S:
		case R_BFIN_PCREL10:
			FUNC7("unsupported relocation: %u (no -mlong-calls?)\n",
				mod->name, FUNC1(rel[i].r_info));
			return -ENOEXEC;

		default:
			FUNC7("unknown relocation: %u\n", mod->name,
				FUNC1(rel[i].r_info));
			return -ENOEXEC;
		}

		switch (FUNC2(location, size)) {
		case BFIN_MEM_ACCESS_CORE:
		case BFIN_MEM_ACCESS_CORE_ONLY:
			FUNC5((void *)location, &value, size);
			break;
		case BFIN_MEM_ACCESS_DMA:
			FUNC3((void *)location, &value, size);
			break;
		case BFIN_MEM_ACCESS_ITEST:
			FUNC4((void *)location, &value, size);
			break;
		default:
			FUNC7("invalid relocation for %#lx\n",
				mod->name, location);
			return -ENOEXEC;
		}
	}

	return 0;
}