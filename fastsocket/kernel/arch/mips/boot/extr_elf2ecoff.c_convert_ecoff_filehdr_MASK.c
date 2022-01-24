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
struct filehdr {void* f_flags; void* f_opthdr; void* f_nsyms; void* f_symptr; void* f_timdat; void* f_nscns; void* f_magic; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 

__attribute__((used)) static void FUNC2(struct filehdr *f)
{
	f->f_magic = FUNC0(f->f_magic);
	f->f_nscns = FUNC0(f->f_nscns);
	f->f_timdat = FUNC1(f->f_timdat);
	f->f_symptr = FUNC1(f->f_symptr);
	f->f_nsyms = FUNC1(f->f_nsyms);
	f->f_opthdr = FUNC0(f->f_opthdr);
	f->f_flags = FUNC0(f->f_flags);
}