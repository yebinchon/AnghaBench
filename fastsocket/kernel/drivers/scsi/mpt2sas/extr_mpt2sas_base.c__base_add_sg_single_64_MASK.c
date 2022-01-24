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
typedef  int u32 ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  Address; int /*<<< orphan*/  FlagsLength; } ;
typedef  TYPE_1__ Mpi2SGESimple64_t ;

/* Variables and functions */
 int MPI2_SGE_FLAGS_64_BIT_ADDRESSING ; 
 int MPI2_SGE_FLAGS_SHIFT ; 
 int MPI2_SGE_FLAGS_SYSTEM_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *paddr, u32 flags_length, dma_addr_t dma_addr)
{
	Mpi2SGESimple64_t *sgel = paddr;

	flags_length |= (MPI2_SGE_FLAGS_64_BIT_ADDRESSING |
	    MPI2_SGE_FLAGS_SYSTEM_ADDRESS) << MPI2_SGE_FLAGS_SHIFT;
	sgel->FlagsLength = FUNC0(flags_length);
	sgel->Address = FUNC1(dma_addr);
}