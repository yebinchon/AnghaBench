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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {scalar_t__ id; int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_7__ {scalar_t__ nr; TYPE_1__ dev; TYPE_2__* algo_data; int /*<<< orphan*/  name; int /*<<< orphan*/  owner; } ;
struct TYPE_6__ {struct i2c_versatile* data; } ;
struct i2c_versatile {scalar_t__ base; TYPE_3__ adap; TYPE_2__ algo; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ I2C_CONTROLS ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int SCL ; 
 int SDA ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*) ; 
 TYPE_2__ i2c_versatile_algo ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_versatile*) ; 
 struct i2c_versatile* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct i2c_versatile*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct platform_device *dev)
{
	struct i2c_versatile *i2c;
	struct resource *r;
	int ret;

	r = FUNC6(dev, IORESOURCE_MEM, 0);
	if (!r) {
		ret = -EINVAL;
		goto err_out;
	}

	if (!FUNC9(r->start, FUNC10(r), "versatile-i2c")) {
		ret = -EBUSY;
		goto err_out;
	}

	i2c = FUNC5(sizeof(struct i2c_versatile), GFP_KERNEL);
	if (!i2c) {
		ret = -ENOMEM;
		goto err_release;
	}

	i2c->base = FUNC2(r->start, FUNC10(r));
	if (!i2c->base) {
		ret = -ENOMEM;
		goto err_free;
	}

	FUNC12(SCL | SDA, i2c->base + I2C_CONTROLS);

	i2c->adap.owner = THIS_MODULE;
	FUNC11(i2c->adap.name, "Versatile I2C adapter", sizeof(i2c->adap.name));
	i2c->adap.algo_data = &i2c->algo;
	i2c->adap.dev.parent = &dev->dev;
	i2c->algo = i2c_versatile_algo;
	i2c->algo.data = i2c;

	if (dev->id >= 0) {
		/* static bus numbering */
		i2c->adap.nr = dev->id;
		ret = FUNC1(&i2c->adap);
	} else
		/* dynamic bus numbering */
		ret = FUNC0(&i2c->adap);
	if (ret >= 0) {
		FUNC7(dev, i2c);
		return 0;
	}

	FUNC3(i2c->base);
 err_free:
	FUNC4(i2c);
 err_release:
	FUNC8(r->start, FUNC10(r));
 err_out:
	return ret;
}