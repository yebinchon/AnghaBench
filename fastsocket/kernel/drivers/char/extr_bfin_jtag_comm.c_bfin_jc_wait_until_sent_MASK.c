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

/* Variables and functions */
 int /*<<< orphan*/  bfin_jc_write_buf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int jiffies ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,unsigned long) ; 

__attribute__((used)) static void
FUNC3(struct tty_struct *tty, int timeout)
{
	unsigned long expire = jiffies + timeout;
	while (!FUNC0(&bfin_jc_write_buf)) {
		if (FUNC1(current))
			break;
		if (FUNC2(jiffies, expire))
			break;
	}
}