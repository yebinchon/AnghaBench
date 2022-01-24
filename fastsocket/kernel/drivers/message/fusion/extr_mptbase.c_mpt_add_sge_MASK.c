#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {void* Address; void* FlagsLength; } ;
typedef  TYPE_1__ SGESimple32_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(void *pAddr, u32 flagslength, dma_addr_t dma_addr)
{
	SGESimple32_t *pSge = (SGESimple32_t *) pAddr;
	pSge->FlagsLength = FUNC0(flagslength);
	pSge->Address = FUNC0(dma_addr);
}