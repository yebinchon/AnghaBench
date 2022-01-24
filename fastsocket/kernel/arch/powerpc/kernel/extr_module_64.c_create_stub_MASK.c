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
struct TYPE_2__ {int /*<<< orphan*/  r2; int /*<<< orphan*/  funcaddr; } ;
struct ppc64_stub_entry {TYPE_1__ opd; int /*<<< orphan*/ * jump; } ;
struct ppc64_opd_entry {int /*<<< orphan*/  r2; int /*<<< orphan*/  funcaddr; } ;
struct module {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  Elf64_Shdr ;
typedef  int /*<<< orphan*/  Elf64_Half ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct ppc64_stub_entry*,long) ; 
 int /*<<< orphan*/  FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 (long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *,struct module*) ; 
 struct ppc64_stub_entry ppc64_stub ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,void*,void*) ; 

__attribute__((used)) static inline int FUNC5(Elf64_Shdr *sechdrs,
			      struct ppc64_stub_entry *entry,
			      struct ppc64_opd_entry *opd,
			      struct module *me)
{
	Elf64_Half *loc1, *loc2;
	long reladdr;

	*entry = ppc64_stub;

	loc1 = (Elf64_Half *)&entry->jump[2];
	loc2 = (Elf64_Half *)&entry->jump[6];

	/* Stub uses address relative to r2. */
	reladdr = (unsigned long)entry - FUNC3(sechdrs, me);
	if (reladdr > 0x7FFFFFFF || reladdr < -(0x80000000L)) {
		FUNC4("%s: Address %p of stub out of range of %p.\n",
		       me->name, (void *)reladdr, (void *)my_r2);
		return 0;
	}
	FUNC0("Stub %p get data from reladdr %li\n", entry, reladdr);

	*loc1 = FUNC1(reladdr);
	*loc2 = FUNC2(reladdr);
	entry->opd.funcaddr = opd->funcaddr;
	entry->opd.r2 = opd->r2;
	return 1;
}