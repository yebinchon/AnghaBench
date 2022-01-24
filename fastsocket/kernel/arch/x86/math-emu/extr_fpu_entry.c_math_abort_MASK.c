#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct math_emu_info {int dummy; } ;
struct TYPE_4__ {int trap_no; scalar_t__ error_code; } ;
struct TYPE_5__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPU_EIP ; 
 int /*<<< orphan*/  FPU_ORIG_EIP ; 
 int /*<<< orphan*/  RE_ENTRANT_CHECK_OFF ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,TYPE_2__*,int) ; 

void FUNC2(struct math_emu_info *info, unsigned int signal)
{
	FPU_EIP = FPU_ORIG_EIP;
	current->thread.trap_no = 16;
	current->thread.error_code = 0;
	FUNC1(signal, current, 1);
	RE_ENTRANT_CHECK_OFF;
      __asm__("movl %0,%%esp ; ret": :"g"(((long)info) - 4));
#ifdef PARANOID
	printk("ERROR: wm-FPU-emu math_abort failed!\n");
#endif /* PARANOID */
}