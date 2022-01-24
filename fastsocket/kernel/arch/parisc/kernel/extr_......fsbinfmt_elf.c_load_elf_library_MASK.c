#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct file {TYPE_1__* f_op; } ;
struct elfhdr {scalar_t__ e_type; int e_phnum; int /*<<< orphan*/  e_phoff; int /*<<< orphan*/  e_ident; } ;
struct elf_phdr {scalar_t__ p_type; int p_vaddr; unsigned long p_filesz; unsigned long p_memsz; scalar_t__ p_offset; } ;
typedef  int /*<<< orphan*/  elf_ex ;
struct TYPE_6__ {TYPE_2__* mm; } ;
struct TYPE_5__ {int /*<<< orphan*/  mmap_sem; } ;
struct TYPE_4__ {int /*<<< orphan*/  mmap; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  ELFMAG ; 
 int ELF_MIN_ALIGN ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int ENOEXEC ; 
 int ENOMEM ; 
 scalar_t__ ET_EXEC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAP_DENYWRITE ; 
 int MAP_FIXED ; 
 int MAP_PRIVATE ; 
 int PROT_EXEC ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 scalar_t__ PT_LOAD ; 
 int /*<<< orphan*/  SELFMAG ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int FUNC3 (struct file*,int,scalar_t__,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct elfhdr*) ; 
 int FUNC6 (struct file*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct elf_phdr*) ; 
 struct elf_phdr* FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct file *file)
{
	struct elf_phdr *elf_phdata;
	struct elf_phdr *eppnt;
	unsigned long elf_bss, bss, len;
	int retval, error, i, j;
	struct elfhdr elf_ex;

	error = -ENOEXEC;
	retval = FUNC6(file, 0, (char *)&elf_ex, sizeof(elf_ex));
	if (retval != sizeof(elf_ex))
		goto out;

	if (FUNC9(elf_ex.e_ident, ELFMAG, SELFMAG) != 0)
		goto out;

	/* First of all, some simple consistency checks */
	if (elf_ex.e_type != ET_EXEC || elf_ex.e_phnum > 2 ||
	    !FUNC5(&elf_ex) || !file->f_op || !file->f_op->mmap)
		goto out;

	/* Now read in all of the header information */

	j = sizeof(struct elf_phdr) * elf_ex.e_phnum;
	/* j < ELF_MIN_ALIGN because elf_ex.e_phnum <= 2 */

	error = -ENOMEM;
	elf_phdata = FUNC8(j, GFP_KERNEL);
	if (!elf_phdata)
		goto out;

	eppnt = elf_phdata;
	error = -ENOEXEC;
	retval = FUNC6(file, elf_ex.e_phoff, (char *)eppnt, j);
	if (retval != j)
		goto out_free_ph;

	for (j = 0, i = 0; i<elf_ex.e_phnum; i++)
		if ((eppnt + i)->p_type == PT_LOAD)
			j++;
	if (j != 1)
		goto out_free_ph;

	while (eppnt->p_type != PT_LOAD)
		eppnt++;

	/* Now use mmap to map the library into memory. */
	FUNC4(&current->mm->mmap_sem);
	error = FUNC3(file,
			FUNC1(eppnt->p_vaddr),
			(eppnt->p_filesz +
			 FUNC0(eppnt->p_vaddr)),
			PROT_READ | PROT_WRITE | PROT_EXEC,
			MAP_FIXED | MAP_PRIVATE | MAP_DENYWRITE,
			(eppnt->p_offset -
			 FUNC0(eppnt->p_vaddr)));
	FUNC11(&current->mm->mmap_sem);
	if (error != FUNC1(eppnt->p_vaddr))
		goto out_free_ph;

	elf_bss = eppnt->p_vaddr + eppnt->p_filesz;
	if (FUNC10(elf_bss)) {
		error = -EFAULT;
		goto out_free_ph;
	}

	len = FUNC1(eppnt->p_filesz + eppnt->p_vaddr +
			    ELF_MIN_ALIGN - 1);
	bss = eppnt->p_memsz + eppnt->p_vaddr;
	if (bss > len) {
		FUNC4(&current->mm->mmap_sem);
		FUNC2(len, bss - len);
		FUNC11(&current->mm->mmap_sem);
	}
	error = 0;

out_free_ph:
	FUNC7(elf_phdata);
out:
	return error;
}