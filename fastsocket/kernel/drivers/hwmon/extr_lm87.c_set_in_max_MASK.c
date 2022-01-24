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
struct lm87_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * in_max; int /*<<< orphan*/ * in_scale; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct lm87_data* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 long FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC8 (struct device*) ; 

__attribute__((used)) static void FUNC9(struct device *dev, const char *buf, int nr)
{
	struct i2c_client *client = FUNC8(dev);
	struct lm87_data *data = FUNC3(client);
	long val = FUNC7(buf, NULL, 10);

	FUNC5(&data->update_lock);
	data->in_max[nr] = FUNC0(val, data->in_scale[nr]);
	FUNC4(client, nr<6 ? FUNC2(nr) :
			 FUNC1(nr-6), data->in_max[nr]);
	FUNC6(&data->update_lock);
}