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
struct elf_prpsinfo {char pr_sname; int /*<<< orphan*/  pr_fname; } ;
typedef  int /*<<< orphan*/  prpsinfo ;

/* Variables and functions */
 int /*<<< orphan*/  KEXEC_CORE_NOTE_NAME ; 
 int /*<<< orphan*/  NT_PRPSINFO ; 
 int /*<<< orphan*/  FUNC0 (struct elf_prpsinfo*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ,struct elf_prpsinfo*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void *FUNC3(void *ptr)
{
	struct elf_prpsinfo prpsinfo;

	FUNC0(&prpsinfo, 0, sizeof(prpsinfo));
	prpsinfo.pr_sname = 'R';
	FUNC2(prpsinfo.pr_fname, "vmlinux");
	return FUNC1(ptr, NT_PRPSINFO, &prpsinfo, sizeof(prpsinfo),
		       KEXEC_CORE_NOTE_NAME);
}