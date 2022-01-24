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
 scalar_t__ FUNC0 (scalar_t__,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct lg_cpu*,char*,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned long,unsigned int) ; 

void FUNC3(struct lg_cpu *cpu, unsigned long addr, const void *b,
	       unsigned bytes)
{
	if (!FUNC2(cpu->lg, addr, bytes)
	    || FUNC0(cpu->lg->mem_base + addr, b, bytes) != 0)
		FUNC1(cpu, "bad write address %#lx len %u", addr, bytes);
}