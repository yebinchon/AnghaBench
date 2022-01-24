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
typedef  unsigned long u64 ;
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  Elf64_Phdr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (void*,int) ; 
 unsigned long FUNC2 (void*,void*) ; 
 void* FUNC3 (void*,int) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 void* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 void* FUNC8 (int /*<<< orphan*/ *,void*,unsigned long) ; 
 scalar_t__ FUNC9 (unsigned long) ; 

__attribute__((used)) static void FUNC10(char **elfcorebuf, size_t *elfcorebuf_sz)
{
	Elf64_Phdr *phdr_notes, *phdr_loads;
	int mem_chunk_cnt;
	void *ptr, *hdr;
	u32 alloc_size;
	u64 hdr_off;

	mem_chunk_cnt = FUNC5();

	alloc_size = 0x1000 + FUNC4() * 0x300 +
		mem_chunk_cnt * sizeof(Elf64_Phdr);
	hdr = FUNC6(alloc_size);
	/* Init elf header */
	ptr = FUNC3(hdr, mem_chunk_cnt);
	/* Init program headers */
	phdr_notes = ptr;
	ptr = FUNC1(ptr, sizeof(Elf64_Phdr));
	phdr_loads = ptr;
	ptr = FUNC1(ptr, sizeof(Elf64_Phdr) * mem_chunk_cnt);
	/* Init notes */
	hdr_off = FUNC2(ptr, hdr);
	ptr = FUNC8(phdr_notes, ptr, ((unsigned long) hdr) + hdr_off);
	/* Init loads */
	hdr_off = FUNC2(ptr, hdr);
	FUNC7(phdr_loads, ((unsigned long) hdr) + hdr_off);
	*elfcorebuf_sz = hdr_off;
	*elfcorebuf = (void *) FUNC9((unsigned long) hdr);
	FUNC0(*elfcorebuf_sz > alloc_size);
}