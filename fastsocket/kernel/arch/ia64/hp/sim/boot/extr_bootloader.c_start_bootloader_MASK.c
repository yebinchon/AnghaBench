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
struct ia64_boot_param {int dummy; } ;
struct elfhdr {int* e_ident; scalar_t__ e_type; unsigned long e_entry; unsigned long e_phnum; unsigned long e_phoff; } ;
struct elf_phdr {scalar_t__ p_type; int p_filesz; unsigned long p_offset; scalar_t__ p_memsz; int /*<<< orphan*/  p_paddr; } ;
struct disk_stat {int fd; int count; } ;
struct disk_req {int len; long addr; } ;
typedef  int /*<<< orphan*/  mem ;

/* Variables and functions */
 scalar_t__ ET_EXEC ; 
 scalar_t__ PT_LOAD ; 
 int /*<<< orphan*/  SSC_CLOSE ; 
 int /*<<< orphan*/  SSC_CONSOLE_INIT ; 
 int /*<<< orphan*/  SSC_EXIT ; 
 int /*<<< orphan*/  SSC_GET_ARGS ; 
 int /*<<< orphan*/  SSC_LOAD_SYMBOLS ; 
 int /*<<< orphan*/  SSC_OPEN ; 
 int /*<<< orphan*/  SSC_READ ; 
 int /*<<< orphan*/  SSC_WAIT_COMPLETION ; 
 int /*<<< orphan*/  _IA64_REG_AR_KR0 ; 
 long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct elfhdr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC7 (int,long,long,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int*,char*,int) ; 
 struct ia64_boot_param* FUNC9 (char*,long) ; 

void
FUNC10 (void)
{
	static char mem[4096];
	static char buffer[1024];
	unsigned long off;
	int fd, i;
	struct disk_req req;
	struct disk_stat stat;
	struct elfhdr *elf;
	struct elf_phdr *elf_phdr;	/* program header */
	unsigned long e_entry, e_phoff, e_phnum;
	register struct ia64_boot_param *bp;
	char *kpath, *args;
	long arglen = 0;

	FUNC7(0, 0, 0, 0, SSC_CONSOLE_INIT);

	/*
	 * S.Eranian: extract the commandline argument from the simulator
	 *
	 * The expected format is as follows:
         *
	 *	kernelname args...
	 *
	 * Both are optional but you can't have the second one without the first.
	 */
	arglen = FUNC7((long) buffer, 0, 0, 0, SSC_GET_ARGS);

	kpath = "vmlinux";
	args = buffer;
	if (arglen > 0) {
		kpath = buffer;
		while (*args != ' ' && *args != '\0')
			++args, --arglen;
		if (*args == ' ')
			*args++ = '\0', --arglen;
	}

	if (arglen <= 0) {
		args = "";
		arglen = 1;
	}

	fd = FUNC7((long) kpath, 1, 0, 0, SSC_OPEN);

	if (fd < 0) {
		FUNC1(kpath);
		FUNC1(": file not found, reboot now\n");
		for(;;);
	}
	stat.fd = fd;
	off = 0;

	req.len = sizeof(mem);
	req.addr = (long) mem;
	FUNC7(fd, 1, (long) &req, off, SSC_READ);
	FUNC7((long) &stat, 0, 0, 0, SSC_WAIT_COMPLETION);

	elf = (struct elfhdr *) mem;
	if (elf->e_ident[0] == 0x7f && FUNC8(elf->e_ident + 1, "ELF", 3) != 0) {
		FUNC1("not an ELF file\n");
		return;
	}
	if (elf->e_type != ET_EXEC) {
		FUNC1("not an ELF executable\n");
		return;
	}
	if (!FUNC3(elf)) {
		FUNC1("kernel not for this processor\n");
		return;
	}

	e_entry = elf->e_entry;
	e_phnum = elf->e_phnum;
	e_phoff = elf->e_phoff;

	FUNC1("loading ");
	FUNC1(kpath);
	FUNC1("...\n");

	for (i = 0; i < e_phnum; ++i) {
		req.len = sizeof(*elf_phdr);
		req.addr = (long) mem;
		FUNC7(fd, 1, (long) &req, e_phoff, SSC_READ);
		FUNC7((long) &stat, 0, 0, 0, SSC_WAIT_COMPLETION);
		if (stat.count != sizeof(*elf_phdr)) {
			FUNC1("failed to read phdr\n");
			return;
		}
		e_phoff += sizeof(*elf_phdr);

		elf_phdr = (struct elf_phdr *) mem;

		if (elf_phdr->p_type != PT_LOAD)
			continue;

		req.len = elf_phdr->p_filesz;
		req.addr = FUNC0(elf_phdr->p_paddr);
		FUNC7(fd, 1, (long) &req, elf_phdr->p_offset, SSC_READ);
		FUNC7((long) &stat, 0, 0, 0, SSC_WAIT_COMPLETION);
		FUNC6((char *)FUNC0(elf_phdr->p_paddr) + elf_phdr->p_filesz, 0,
		       elf_phdr->p_memsz - elf_phdr->p_filesz);
	}
	FUNC7(fd, 0, 0, 0, SSC_CLOSE);

	FUNC1("starting kernel...\n");

	/* fake an I/O base address: */
	FUNC4(_IA64_REG_AR_KR0, 0xffffc000000UL);

	bp = FUNC9(args, arglen);

	FUNC7(0, (long) kpath, 0, 0, SSC_LOAD_SYMBOLS);

	FUNC2();
	FUNC5((unsigned long) bp, e_entry);

	FUNC1("kernel returned!\n");
	FUNC7(-1, 0, 0, 0, SSC_EXIT);
}