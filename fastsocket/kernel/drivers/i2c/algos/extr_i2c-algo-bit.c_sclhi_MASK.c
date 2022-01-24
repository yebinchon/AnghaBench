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
struct i2c_algo_bit_data {int /*<<< orphan*/  udelay; scalar_t__ timeout; int /*<<< orphan*/  getscl; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_algo_bit_data*) ; 
 int i2c_debug ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_algo_bit_data*,int) ; 
 scalar_t__ FUNC4 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_algo_bit_data *adap)
{
	unsigned long start;

	FUNC3(adap, 1);

	/* Not all adapters have scl sense line... */
	if (!adap->getscl)
		goto done;

	start = jiffies;
	while (!FUNC1(adap)) {
		/* This hw knows how to read the clock line, so we wait
		 * until it actually gets high.  This is safer as some
		 * chips may hold it low ("clock stretching") while they
		 * are processing data internally.
		 */
		if (FUNC4(jiffies, start + adap->timeout))
			return -ETIMEDOUT;
		FUNC0();
	}
#ifdef DEBUG
	if (jiffies != start && i2c_debug >= 3)
		pr_debug("i2c-algo-bit: needed %ld jiffies for SCL to go "
			 "high\n", jiffies - start);
#endif

done:
	FUNC5(adap->udelay);
	return 0;
}