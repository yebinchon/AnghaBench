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
struct tty_struct {int dummy; } ;
struct tty_ldisc {int dummy; } ;

/* Variables and functions */
 struct tty_ldisc* FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  tty_ldisc_wait ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct tty_ldisc *FUNC2(struct tty_struct *tty)
{
	struct tty_ldisc *ld;

	/* wait_event is a macro */
	FUNC1(tty_ldisc_wait, (ld = FUNC0(tty)) != NULL);
	return ld;
}