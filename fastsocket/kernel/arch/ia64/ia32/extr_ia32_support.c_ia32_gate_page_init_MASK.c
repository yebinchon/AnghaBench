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
 int /*<<< orphan*/  GFP_KERNEL ; 
 int __IA32_NR_rt_sigreturn ; 
 int __IA32_NR_sigreturn ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ia32_gate_page ; 
 unsigned long* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void)
{
	unsigned long *sr;

	ia32_gate_page = FUNC0(GFP_KERNEL);
	sr = FUNC1(ia32_gate_page);
	/* This is popl %eax ; movl $,%eax ; int $0x80 */
	*sr++ = 0xb858 | (__IA32_NR_sigreturn << 16) | (0x80cdUL << 48);

	/* This is movl $,%eax ; int $0x80 */
	*sr = 0xb8 | (__IA32_NR_rt_sigreturn << 8) | (0x80cdUL << 40);
}