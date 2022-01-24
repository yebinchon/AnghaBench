#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ sh_type; int sh_size; int /*<<< orphan*/  sh_offset; } ;
struct section {TYPE_2__* reltab; TYPE_1__ shdr; } ;
struct TYPE_8__ {int e_shnum; } ;
struct TYPE_7__ {void* r_info; void* r_offset; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_2__ Elf32_Rel ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ SHT_REL ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 TYPE_5__ ehdr ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (TYPE_2__*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int) ; 
 struct section* secs ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(FILE *fp)
{
	int i,j;
	for (i = 0; i < ehdr.e_shnum; i++) {
		struct section *sec = &secs[i];
		if (sec->shdr.sh_type != SHT_REL) {
			continue;
		}
		sec->reltab = FUNC4(sec->shdr.sh_size);
		if (!sec->reltab) {
			FUNC0("malloc of %d bytes for relocs failed\n",
				sec->shdr.sh_size);
		}
		if (FUNC3(fp, sec->shdr.sh_offset, SEEK_SET) < 0) {
			FUNC0("Seek to %d failed: %s\n",
				sec->shdr.sh_offset, FUNC5(errno));
		}
		if (FUNC2(sec->reltab, 1, sec->shdr.sh_size, fp)
		    != sec->shdr.sh_size) {
			FUNC0("Cannot read symbol table: %s\n",
				FUNC5(errno));
		}
		for (j = 0; j < sec->shdr.sh_size/sizeof(Elf32_Rel); j++) {
			Elf32_Rel *rel = &sec->reltab[j];
			rel->r_offset = FUNC1(rel->r_offset);
			rel->r_info   = FUNC1(rel->r_info);
		}
	}
}