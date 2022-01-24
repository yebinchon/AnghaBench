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
struct tty_struct {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  VC_SCROLLOCK ; 
 scalar_t__ kbd_table ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct tty_struct *tty)
{
	int console_num;
	if (!tty)
		return;
	console_num = tty->index;
	if (!FUNC2(console_num))
		return;
	FUNC1(kbd_table + console_num, VC_SCROLLOCK);
	FUNC0();
}