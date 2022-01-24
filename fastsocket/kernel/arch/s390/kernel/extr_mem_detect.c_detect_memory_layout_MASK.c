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
struct mem_chunk {int dummy; } ;

/* Variables and functions */
 int MEMORY_CHUNKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 unsigned long FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct mem_chunk*) ; 
 int /*<<< orphan*/  FUNC6 (struct mem_chunk*,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct mem_chunk chunk[])
{
	unsigned long flags, cr0;

	FUNC6(chunk, 0, MEMORY_CHUNKS * sizeof(struct mem_chunk));
	/* Disable IRQs, DAT and low address protection so tprot does the
	 * right thing and we don't get scheduled away with low address
	 * protection disabled.
	 */
	flags = FUNC4(0xf8);
	FUNC2(cr0, 0, 0);
	FUNC0(0, 28);
	FUNC5(chunk);
	FUNC1(cr0, 0, 0);
	FUNC3(flags);
}