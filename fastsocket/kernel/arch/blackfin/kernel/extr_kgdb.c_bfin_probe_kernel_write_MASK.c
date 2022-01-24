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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  mmr ;

/* Variables and functions */
#define  BFIN_MEM_ACCESS_CORE 131 
#define  BFIN_MEM_ACCESS_CORE_ONLY 130 
#define  BFIN_MEM_ACCESS_DMA 129 
#define  BFIN_MEM_ACCESS_ITEST 128 
 int EFAULT ; 
 unsigned long SYSMMR_BASE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (char*,char*,int) ; 
 int FUNC6 (unsigned long,int) ; 

__attribute__((used)) static int FUNC7(char *dst, char *src, int size)
{
	unsigned long ldst = (unsigned long)dst;
	int mem_type;

	mem_type = FUNC6(ldst, size);
	if (mem_type < 0)
		return mem_type;

	if (ldst >= SYSMMR_BASE) {
		if (size == 2 && ldst % 2 == 0) {
			u16 mmr;
			FUNC4(&mmr, src, sizeof(mmr));
			FUNC0(dst, mmr);
			return 0;
		} else if (size == 4 && ldst % 4 == 0) {
			u32 mmr;
			FUNC4(&mmr, src, sizeof(mmr));
			FUNC1(dst, mmr);
			return 0;
		}
	} else {
		switch (mem_type) {
			case BFIN_MEM_ACCESS_CORE:
			case BFIN_MEM_ACCESS_CORE_ONLY:
				return FUNC5(dst, src, size);
			/* XXX: should support IDMA here with SMP */
			case BFIN_MEM_ACCESS_DMA:
				if (FUNC2(dst, src, size))
					return 0;
				break;
			case BFIN_MEM_ACCESS_ITEST:
				if (FUNC3(dst, src, size))
					return 0;
				break;
		}
	}

	return -EFAULT;
}