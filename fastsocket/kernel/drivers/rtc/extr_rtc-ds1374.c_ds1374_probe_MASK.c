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
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct ds1374 {int /*<<< orphan*/  rtc; int /*<<< orphan*/  mutex; int /*<<< orphan*/  work; struct i2c_client* client; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  ds1374_irq ; 
 int /*<<< orphan*/  ds1374_rtc_ops ; 
 int /*<<< orphan*/  ds1374_work ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct ds1374*) ; 
 int /*<<< orphan*/  FUNC7 (struct ds1374*) ; 
 struct ds1374* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct ds1374 *ds1374;
	int ret;

	ds1374 = FUNC8(sizeof(struct ds1374), GFP_KERNEL);
	if (!ds1374)
		return -ENOMEM;

	ds1374->client = client;
	FUNC6(client, ds1374);

	FUNC0(&ds1374->work, ds1374_work);
	FUNC9(&ds1374->mutex);

	ret = FUNC4(client);
	if (ret)
		goto out_free;

	if (client->irq > 0) {
		ret = FUNC10(client->irq, ds1374_irq, 0,
		                  "ds1374", client);
		if (ret) {
			FUNC3(&client->dev, "unable to request IRQ\n");
			goto out_free;
		}
	}

	ds1374->rtc = FUNC11(client->name, &client->dev,
	                                  &ds1374_rtc_ops, THIS_MODULE);
	if (FUNC1(ds1374->rtc)) {
		ret = FUNC2(ds1374->rtc);
		FUNC3(&client->dev, "unable to register the class device\n");
		goto out_irq;
	}

	return 0;

out_irq:
	if (client->irq > 0)
		FUNC5(client->irq, client);

out_free:
	FUNC6(client, NULL);
	FUNC7(ds1374);
	return ret;
}