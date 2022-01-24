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
struct vc_data {struct tty_struct* vc_tty; } ;
struct tty_struct {scalar_t__ stopped; } ;

/* Variables and functions */
 scalar_t__ rep ; 
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC2(struct vc_data *vc)
{
	struct tty_struct *tty = vc->vc_tty;

	if (rep || !tty)
		return;

	/*
	 * Note: SCROLLOCK will be set (cleared) by stop_tty (start_tty);
	 * these routines are also activated by ^S/^Q.
	 * (And SCROLLOCK can also be set by the ioctl KDSKBLED.)
	 */
	if (tty->stopped)
		FUNC0(tty);
	else
		FUNC1(tty);
}