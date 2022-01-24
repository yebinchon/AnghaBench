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
struct uart_driver {struct tty_driver* tty_driver; int /*<<< orphan*/  state; } ;
struct tty_driver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_driver*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_driver*) ; 

void FUNC3(struct uart_driver *drv)
{
	struct tty_driver *p = drv->tty_driver;
	FUNC2(p);
	FUNC1(p);
	FUNC0(drv->state);
	drv->tty_driver = NULL;
}