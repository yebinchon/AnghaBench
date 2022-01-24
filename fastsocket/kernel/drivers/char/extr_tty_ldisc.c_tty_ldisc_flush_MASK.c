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
struct tty_struct {int dummy; } ;
struct tty_ldisc {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush_buffer ) (struct tty_struct*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_ldisc*) ; 
 struct tty_ldisc* FUNC3 (struct tty_struct*) ; 

void FUNC4(struct tty_struct *tty)
{
	struct tty_ldisc *ld = FUNC3(tty);
	if (ld) {
		if (ld->ops->flush_buffer)
			ld->ops->flush_buffer(tty);
		FUNC2(ld);
	}
	FUNC1(tty);
}