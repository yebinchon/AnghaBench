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
typedef  int u32 ;
struct tg3 {scalar_t__ nvram_jedecnum; int nvram_pagesize; } ;

/* Variables and functions */
 int ATMEL_AT45DB0X1B_PAGE_POS ; 
 int /*<<< orphan*/  FLASH ; 
 scalar_t__ JEDEC_ATMEL ; 
 int /*<<< orphan*/  NO_NVRAM_ADDR_TRANS ; 
 int /*<<< orphan*/  NVRAM ; 
 int /*<<< orphan*/  NVRAM_BUFFERED ; 
 scalar_t__ FUNC0 (struct tg3*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC1(struct tg3 *tp, u32 addr)
{
	if (FUNC0(tp, NVRAM) &&
	    FUNC0(tp, NVRAM_BUFFERED) &&
	    FUNC0(tp, FLASH) &&
	    !FUNC0(tp, NO_NVRAM_ADDR_TRANS) &&
	    (tp->nvram_jedecnum == JEDEC_ATMEL))

		addr = ((addr / tp->nvram_pagesize) <<
			ATMEL_AT45DB0X1B_PAGE_POS) +
		       (addr % tp->nvram_pagesize);

	return addr;
}