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
struct device {int dummy; } ;
struct sdio_func {struct device dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* net_dev; } ;
struct i2400m {TYPE_1__ wimax_dev; } ;
struct i2400ms {int /*<<< orphan*/  debugfs_dentry; struct i2400m i2400m; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2400ms*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_func*) ; 
 struct i2400ms* FUNC8 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC9 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC10 (struct sdio_func*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC11(struct sdio_func *func)
{
	struct device *dev = &func->dev;
	struct i2400ms *i2400ms = FUNC8(func);
	struct i2400m *i2400m = &i2400ms->i2400m;
	struct net_device *net_dev = i2400m->wimax_dev.net_dev;

	FUNC1(3, dev, "SDIO func %p\n", func);
	FUNC2(i2400ms->debugfs_dentry);
	FUNC5(i2400ms);
	FUNC4(i2400m);
	FUNC10(func, NULL);
	FUNC6(func);
	FUNC7(func);
	FUNC9(func);
	FUNC3(net_dev);
	FUNC0(3, dev, "SDIO func %p\n", func);
}