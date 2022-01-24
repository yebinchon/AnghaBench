#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct aouthdr {void* gp_value; void** cprmask; void* gprmask; void* bss_start; void* data_start; void* text_start; void* entry; void* bsize; void* dsize; void* tsize; void* vstamp; void* magic; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 

__attribute__((used)) static void FUNC2(struct aouthdr *a)
{
	a->magic = FUNC0(a->magic);
	a->vstamp = FUNC0(a->vstamp);
	a->tsize = FUNC1(a->tsize);
	a->dsize = FUNC1(a->dsize);
	a->bsize = FUNC1(a->bsize);
	a->entry = FUNC1(a->entry);
	a->text_start = FUNC1(a->text_start);
	a->data_start = FUNC1(a->data_start);
	a->bss_start = FUNC1(a->bss_start);
	a->gprmask = FUNC1(a->gprmask);
	a->cprmask[0] = FUNC1(a->cprmask[0]);
	a->cprmask[1] = FUNC1(a->cprmask[1]);
	a->cprmask[2] = FUNC1(a->cprmask[2]);
	a->cprmask[3] = FUNC1(a->cprmask[3]);
	a->gp_value = FUNC1(a->gp_value);
}