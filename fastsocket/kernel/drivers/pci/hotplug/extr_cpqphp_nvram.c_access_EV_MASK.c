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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  compaq_int15_entry_point ; 
 int /*<<< orphan*/  int15_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u32 FUNC2 (u16 operation, u8 *ev_name, u8 *buffer, u32 *buf_size)
{
	unsigned long flags;
	int op = operation;
	int ret_val;

	if (!compaq_int15_entry_point)
		return -ENODEV;

	FUNC0(&int15_lock, flags);
	__asm__ (
		"xorl   %%ebx,%%ebx\n" \
		"xorl    %%edx,%%edx\n" \
		"pushf\n" \
		"push %%cs\n" \
		"cli\n" \
		"call *%6\n"
		: "=c" (*buf_size), "=a" (ret_val)
		: "a" (op), "c" (*buf_size), "S" (ev_name),
		"D" (buffer), "m" (compaq_int15_entry_point)
		: "%ebx", "%edx");
	FUNC1(&int15_lock, flags);

	return((ret_val & 0xFF00) >> 8);
}