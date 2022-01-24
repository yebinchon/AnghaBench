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
struct timeval {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 scalar_t__ SERIAL_TIMER_VALUE ; 
 int /*<<< orphan*/  SYS_read ; 
 int /*<<< orphan*/  SYS_select_one ; 
 int /*<<< orphan*/  TTY_NORMAL ; 
 unsigned long XTISS_SELECT_ONE_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  serial_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer_lock ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*,unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(unsigned long priv)
{
	struct tty_struct* tty = (struct tty_struct*) priv;

	struct timeval tv = { .tv_sec = 0, .tv_usec = 0 };
	int i = 0;
	unsigned char c;

	FUNC2(&timer_lock);

	while (FUNC0(SYS_select_one, 0, XTISS_SELECT_ONE_READ, (int)&tv,0,0)){
		FUNC0 (SYS_read, 0, (unsigned long)&c, 1, 0, 0);
		FUNC5(tty, c, TTY_NORMAL);
		i++;
	}

	if (i)
		FUNC4(tty);


	FUNC1(&serial_timer, jiffies + SERIAL_TIMER_VALUE);
	FUNC3(&timer_lock);
}