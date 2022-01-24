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
struct hso_serial {int /*<<< orphan*/  unthrottle_tasklet; } ;

/* Variables and functions */
 struct hso_serial* FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static	void FUNC2(struct tty_struct *tty)
{
	struct hso_serial *serial = FUNC0(tty);

	FUNC1(&serial->unthrottle_tasklet);
}