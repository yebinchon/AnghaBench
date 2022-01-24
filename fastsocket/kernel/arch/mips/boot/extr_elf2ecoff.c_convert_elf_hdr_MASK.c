#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* e_shstrndx; void* e_shnum; void* e_shentsize; void* e_phnum; void* e_phentsize; void* e_ehsize; void* e_flags; void* e_shoff; void* e_phoff; void* e_entry; void* e_version; void* e_machine; void* e_type; } ;
typedef  TYPE_1__ Elf32_Ehdr ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 

__attribute__((used)) static void FUNC2(Elf32_Ehdr * e)
{
	e->e_type = FUNC0(e->e_type);
	e->e_machine = FUNC0(e->e_machine);
	e->e_version = FUNC1(e->e_version);
	e->e_entry = FUNC1(e->e_entry);
	e->e_phoff = FUNC1(e->e_phoff);
	e->e_shoff = FUNC1(e->e_shoff);
	e->e_flags = FUNC1(e->e_flags);
	e->e_ehsize = FUNC0(e->e_ehsize);
	e->e_phentsize = FUNC0(e->e_phentsize);
	e->e_phnum = FUNC0(e->e_phnum);
	e->e_shentsize = FUNC0(e->e_shentsize);
	e->e_shnum = FUNC0(e->e_shnum);
	e->e_shstrndx = FUNC0(e->e_shstrndx);
}