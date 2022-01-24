#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct module {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  cpu_features; int /*<<< orphan*/  mmu_features; } ;
struct TYPE_7__ {int sh_size; scalar_t__ sh_addr; } ;
typedef  TYPE_1__ Elf_Shdr ;
typedef  int /*<<< orphan*/  Elf_Ehdr ;

/* Variables and functions */
 TYPE_6__* cur_cpu_spec ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,void*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/  const*,TYPE_1__ const*,char*) ; 
 int FUNC3 (int /*<<< orphan*/  const*,TYPE_1__ const*,struct module*) ; 
 int /*<<< orphan*/  powerpc_firmware_features ; 

int FUNC4(const Elf_Ehdr *hdr,
		const Elf_Shdr *sechdrs, struct module *me)
{
	const Elf_Shdr *sect;
	int err;

	err = FUNC3(hdr, sechdrs, me);
	if (err)
		return err;

	/* Apply feature fixups */
	sect = FUNC2(hdr, sechdrs, "__ftr_fixup");
	if (sect != NULL)
		FUNC0(cur_cpu_spec->cpu_features,
				  (void *)sect->sh_addr,
				  (void *)sect->sh_addr + sect->sh_size);

	sect = FUNC2(hdr, sechdrs, "__mmu_ftr_fixup");
	if (sect != NULL)
		FUNC0(cur_cpu_spec->mmu_features,
				  (void *)sect->sh_addr,
				  (void *)sect->sh_addr + sect->sh_size);

#ifdef CONFIG_PPC64
	sect = find_section(hdr, sechdrs, "__fw_ftr_fixup");
	if (sect != NULL)
		do_feature_fixups(powerpc_firmware_features,
				  (void *)sect->sh_addr,
				  (void *)sect->sh_addr + sect->sh_size);
#endif

	sect = FUNC2(hdr, sechdrs, "__lwsync_fixup");
	if (sect != NULL)
		FUNC1(cur_cpu_spec->cpu_features,
				 (void *)sect->sh_addr,
				 (void *)sect->sh_addr + sect->sh_size);

	return 0;
}