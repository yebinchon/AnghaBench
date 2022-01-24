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
struct tty_struct {struct stliport* driver_data; } ;
struct stliport {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  ST_TXBUSY ; 
 int /*<<< orphan*/  current ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty, int timeout)
{
	struct stliport *portp;
	unsigned long tend;

	portp = tty->driver_data;
	if (portp == NULL)
		return;

	if (timeout == 0)
		timeout = HZ;
	tend = jiffies + timeout;

	while (FUNC2(ST_TXBUSY, &portp->state)) {
		if (FUNC1(current))
			break;
		FUNC0(20);
		if (FUNC3(jiffies, tend))
			break;
	}
}