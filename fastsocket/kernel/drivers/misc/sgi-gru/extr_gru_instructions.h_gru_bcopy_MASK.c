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
struct gru_instruction {long baddr0; long op2_value_baddr1; unsigned long nelem; unsigned int tri1_bufsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  IAA_RAM ; 
 int /*<<< orphan*/  OP_BCOPY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gru_instruction*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(void *cb, const unsigned long src,
		unsigned long dest,
		unsigned int tri0, unsigned int xtype, unsigned long nelem,
		unsigned int bufsize, unsigned long hints)
{
	struct gru_instruction *ins = (void *)cb;

	ins->baddr0 = (long)src;
	ins->op2_value_baddr1 = (long)dest;
	ins->nelem = nelem;
	ins->tri1_bufsize = bufsize;
	FUNC2(ins, FUNC1(OP_BCOPY, 0, xtype, IAA_RAM,
					IAA_RAM, tri0, FUNC0(hints)));
}