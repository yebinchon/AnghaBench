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
struct at24_data {int /*<<< orphan*/  lock; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 size_t FUNC0 (struct at24_data*,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static ssize_t FUNC4(struct at24_data *at24,
		char *buf, loff_t off, size_t count)
{
	ssize_t retval = 0;

	if (FUNC3(!count))
		return count;

	/*
	 * Read data from chip, protecting against concurrent updates
	 * from this host, but not from other I2C masters.
	 */
	FUNC1(&at24->lock);

	while (count) {
		ssize_t	status;

		status = FUNC0(at24, buf, off, count);
		if (status <= 0) {
			if (retval == 0)
				retval = status;
			break;
		}
		buf += status;
		off += status;
		count -= status;
		retval += status;
	}

	FUNC2(&at24->lock);

	return retval;
}