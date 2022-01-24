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
typedef  unsigned int u32 ;
struct sram_channel {unsigned int name; int fifo_size; scalar_t__ cnt2_reg; scalar_t__ cnt1_reg; scalar_t__ ptr2_reg; scalar_t__ ptr1_reg; scalar_t__ ctrl_start; int /*<<< orphan*/  fifo_start; scalar_t__ cmds_start; } ;
struct cx88_core {unsigned int name; } ;

/* Variables and functions */
 unsigned int FUNC0 (char**) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,...) ; 

void FUNC4(struct cx88_core *core,
			    struct sram_channel *ch)
{
	static char *name[] = {
		"initial risc",
		"cdt base",
		"cdt size",
		"iq base",
		"iq size",
		"risc pc",
		"iq wr ptr",
		"iq rd ptr",
		"cdt current",
		"pci target",
		"line / byte",
	};
	u32 risc;
	unsigned int i,j,n;

	FUNC3("%s: %s - dma channel status dump\n",
	       core->name,ch->name);
	for (i = 0; i < FUNC0(name); i++)
		FUNC3("%s:   cmds: %-12s: 0x%08x\n",
		       core->name,name[i],
		       FUNC2(ch->cmds_start + 4*i));
	for (n = 1, i = 0; i < 4; i++) {
		risc = FUNC2(ch->cmds_start + 4 * (i+11));
		FUNC3("%s:   risc%d: ", core->name, i);
		if (--n)
			FUNC3("0x%08x [ arg #%d ]\n", risc, n);
		else
			n = FUNC1(risc);
	}
	for (i = 0; i < 16; i += n) {
		risc = FUNC2(ch->ctrl_start + 4 * i);
		FUNC3("%s:   iq %x: ", core->name, i);
		n = FUNC1(risc);
		for (j = 1; j < n; j++) {
			risc = FUNC2(ch->ctrl_start + 4 * (i+j));
			FUNC3("%s:   iq %x: 0x%08x [ arg #%d ]\n",
			       core->name, i+j, risc, j);
		}
	}

	FUNC3("%s: fifo: 0x%08x -> 0x%x\n",
	       core->name, ch->fifo_start, ch->fifo_start+ch->fifo_size);
	FUNC3("%s: ctrl: 0x%08x -> 0x%x\n",
	       core->name, ch->ctrl_start, ch->ctrl_start+6*16);
	FUNC3("%s:   ptr1_reg: 0x%08x\n",
	       core->name,FUNC2(ch->ptr1_reg));
	FUNC3("%s:   ptr2_reg: 0x%08x\n",
	       core->name,FUNC2(ch->ptr2_reg));
	FUNC3("%s:   cnt1_reg: 0x%08x\n",
	       core->name,FUNC2(ch->cnt1_reg));
	FUNC3("%s:   cnt2_reg: 0x%08x\n",
	       core->name,FUNC2(ch->cnt2_reg));
}