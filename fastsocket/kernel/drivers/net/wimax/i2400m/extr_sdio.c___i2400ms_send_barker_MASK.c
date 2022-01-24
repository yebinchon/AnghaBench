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
struct device {int dummy; } ;
struct sdio_func {struct device dev; } ;
struct i2400ms {struct sdio_func* func; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2400MS_BLK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*) ; 
 int FUNC5 (struct sdio_func*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 

__attribute__((used)) static
int FUNC7(struct i2400ms *i2400ms,
			  const __le32 *barker, size_t barker_size)
{
	int  ret;
	struct sdio_func *func = i2400ms->func;
	struct device *dev = &func->dev;
	void *buffer;

	ret = -ENOMEM;
	buffer = FUNC2(I2400MS_BLK_SIZE, GFP_KERNEL);
	if (buffer == NULL)
		goto error_kzalloc;

	FUNC3(buffer, barker, barker_size);
	FUNC4(func);
	ret = FUNC5(func, 0, buffer, I2400MS_BLK_SIZE);
	FUNC6(func);

	if (ret < 0)
		FUNC0(0, dev, "E: barker error: %d\n", ret);

	FUNC1(buffer);
error_kzalloc:
	return ret;
}