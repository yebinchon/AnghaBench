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
struct tty_struct {scalar_t__ driver_data; } ;
struct TYPE_2__ {scalar_t__ tail; scalar_t__ head; } ;
struct async_struct {TYPE_1__ xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC3(struct tty_struct *tty)
{
	struct async_struct *info = (struct async_struct *)tty->driver_data;
	unsigned long flags;

	FUNC1(flags);
	info->xmit.head = info->xmit.tail = 0;
	FUNC0(flags);

	FUNC2(tty);
}