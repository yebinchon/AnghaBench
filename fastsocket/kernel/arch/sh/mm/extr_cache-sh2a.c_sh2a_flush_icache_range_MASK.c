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
struct flusher_data {int addr1; int addr2; } ;

/* Variables and functions */
 unsigned long CACHE_IC_ADDRESS_ARRAY ; 
 unsigned long CACHE_OC_ADDRESS_ARRAY ; 
 unsigned long CACHE_PHYSADDR_MASK ; 
 int L1_CACHE_BYTES ; 
 unsigned long SH_CACHE_UPDATED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static void FUNC6(void *args)
{
	struct flusher_data *data = args;
	unsigned long start, end;
	unsigned long v;
	unsigned long flags;

	start = data->addr1 & ~(L1_CACHE_BYTES-1);
	end = (data->addr2 + L1_CACHE_BYTES-1) & ~(L1_CACHE_BYTES-1);

	FUNC5(flags);
	FUNC3();

	for (v = start; v < end; v+=L1_CACHE_BYTES) {
		unsigned long addr = (v & 0x000007f0);
		int way;
		/* O-Cache writeback */
		for (way = 0; way < 4; way++) {
			unsigned long data =  FUNC1(CACHE_OC_ADDRESS_ARRAY | addr | (way << 11));
			if ((data & CACHE_PHYSADDR_MASK) == (v & CACHE_PHYSADDR_MASK)) {
				data &= ~SH_CACHE_UPDATED;
				FUNC2(data, CACHE_OC_ADDRESS_ARRAY | addr | (way << 11));
			}
		}
		/* I-Cache invalidate */
		FUNC2(addr,
			  CACHE_IC_ADDRESS_ARRAY | addr | 0x00000008);
	}

	FUNC0();
	FUNC4(flags);
}