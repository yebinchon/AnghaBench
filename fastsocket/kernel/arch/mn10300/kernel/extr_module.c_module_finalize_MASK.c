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
struct module {int dummy; } ;
typedef  int /*<<< orphan*/  Elf_Shdr ;
typedef  int /*<<< orphan*/  Elf_Ehdr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,struct module*) ; 

int FUNC1(const Elf_Ehdr *hdr,
		    const Elf_Shdr *sechdrs,
		    struct module *me)
{
	return FUNC0(hdr, sechdrs, me);
}