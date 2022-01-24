#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* net_dev; } ;
struct i2400m {int /*<<< orphan*/  bm_cmd_buf; int /*<<< orphan*/  bm_ack_buf; TYPE_2__ wimax_dev; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2400m*) ; 
 struct device* FUNC3 (struct i2400m*) ; 
 int /*<<< orphan*/  i2400m_dev_attr_group ; 
 int /*<<< orphan*/  FUNC4 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

void FUNC10(struct i2400m *i2400m)
{
	struct device *dev = FUNC3(i2400m);

	FUNC1(3, dev, "(i2400m %p)\n", i2400m);
	FUNC6(i2400m->wimax_dev.net_dev);

	FUNC2(i2400m);
	FUNC7(&i2400m->wimax_dev.net_dev->dev.kobj,
			   &i2400m_dev_attr_group);
	FUNC9(&i2400m->wimax_dev);
	FUNC4(i2400m);
	FUNC8(i2400m->wimax_dev.net_dev);
	FUNC5(i2400m->bm_ack_buf);
	FUNC5(i2400m->bm_cmd_buf);
	FUNC0(3, dev, "(i2400m %p) = void\n", i2400m);
}