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
struct lg_cpu {TYPE_1__* lg; } ;
struct TYPE_2__ {scalar_t__ mem_base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct lg_cpu*,char*,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC4(struct lg_cpu *cpu, void *b, unsigned long addr, unsigned bytes)
{
	if (!FUNC2(cpu->lg, addr, bytes)
	    || FUNC0(b, cpu->lg->mem_base + addr, bytes) != 0) {
		/* copy_from_user should do this, but as we rely on it... */
		FUNC3(b, 0, bytes);
		FUNC1(cpu, "bad read address %#lx len %u", addr, bytes);
	}
}