#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pt1_config {int /*<<< orphan*/  va1j5jf8007t_config; int /*<<< orphan*/  va1j5jf8007s_config; } ;
struct i2c_adapter {int dummy; } ;
struct pt1 {int /*<<< orphan*/ * adaps; TYPE_1__* pdev; struct i2c_adapter i2c_adap; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* release ) (struct dvb_frontend*) ;} ;
struct dvb_frontend {TYPE_2__ ops; } ;
struct TYPE_3__ {int device; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_frontend*) ; 
 struct pt1_config* pt1_configs ; 
 int FUNC1 (int /*<<< orphan*/ ,struct dvb_frontend*) ; 
 struct pt1_config* pt2_configs ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*) ; 
 struct dvb_frontend* FUNC3 (int /*<<< orphan*/ *,struct i2c_adapter*) ; 
 int FUNC4 (struct dvb_frontend*) ; 
 struct dvb_frontend* FUNC5 (int /*<<< orphan*/ *,struct i2c_adapter*) ; 
 int FUNC6 (struct dvb_frontend*) ; 

__attribute__((used)) static int FUNC7(struct pt1 *pt1)
{
	int i, j;
	struct i2c_adapter *i2c_adap;
	const struct pt1_config *configs, *config;
	struct dvb_frontend *fe[4];
	int ret;

	i = 0;
	j = 0;

	i2c_adap = &pt1->i2c_adap;
	configs = pt1->pdev->device == 0x211a ? pt1_configs : pt2_configs;
	do {
		config = &configs[i / 2];

		fe[i] = FUNC3(&config->va1j5jf8007s_config,
					    i2c_adap);
		if (!fe[i]) {
			ret = -ENODEV; /* This does not sound nice... */
			goto err;
		}
		i++;

		fe[i] = FUNC5(&config->va1j5jf8007t_config,
					    i2c_adap);
		if (!fe[i]) {
			ret = -ENODEV;
			goto err;
		}
		i++;

		ret = FUNC4(fe[i - 2]);
		if (ret < 0)
			goto err;

		ret = FUNC6(fe[i - 1]);
		if (ret < 0)
			goto err;

	} while (i < 4);

	do {
		ret = FUNC1(pt1->adaps[j], fe[j]);
		if (ret < 0)
			goto err;
	} while (++j < 4);

	return 0;

err:
	while (i-- > j)
		fe[i]->ops.release(fe[i]);

	while (j--)
		FUNC0(fe[j]);

	return ret;
}