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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 

__attribute__((used)) static inline void FUNC1(unsigned int *insn_addr,
				      unsigned int immed)
{
	*insn_addr = (*insn_addr & 0xffff0000) | immed;
	FUNC0((unsigned long)insn_addr, 4+
			   (unsigned long)insn_addr);
}