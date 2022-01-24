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
struct s35390a {int twentyfourhour; struct i2c_client** client; int /*<<< orphan*/  rtc; } ;
struct rtc_time {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; scalar_t__ addr; int /*<<< orphan*/  adapter; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S35390A_CMD_STATUS1 ; 
 char S35390A_FLAG_24H ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct s35390a*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC8 (struct s35390a*) ; 
 struct s35390a* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct s35390a*) ; 
 TYPE_2__ s35390a_driver ; 
 scalar_t__ FUNC12 (struct i2c_client*,struct rtc_time*) ; 
 int FUNC13 (struct s35390a*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC14 (struct s35390a*) ; 
 int /*<<< orphan*/  s35390a_rtc_ops ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	int err;
	unsigned int i;
	struct s35390a *s35390a;
	struct rtc_time tm;
	char buf[1];

	if (!FUNC4(client->adapter, I2C_FUNC_I2C)) {
		err = -ENODEV;
		goto exit;
	}

	s35390a = FUNC9(sizeof(struct s35390a), GFP_KERNEL);
	if (!s35390a) {
		err = -ENOMEM;
		goto exit;
	}

	s35390a->client[0] = client;
	FUNC6(client, s35390a);

	/* This chip uses multiple addresses, use dummy devices for them */
	for (i = 1; i < 8; ++i) {
		s35390a->client[i] = FUNC5(client->adapter,
					client->addr + i);
		if (!s35390a->client[i]) {
			FUNC2(&client->dev, "Address %02x unavailable\n",
						client->addr + i);
			err = -EBUSY;
			goto exit_dummy;
		}
	}

	err = FUNC14(s35390a);
	if (err < 0) {
		FUNC2(&client->dev, "error resetting chip\n");
		goto exit_dummy;
	}

	err = FUNC11(s35390a);
	if (err < 0) {
		FUNC2(&client->dev, "error disabling test mode\n");
		goto exit_dummy;
	}

	err = FUNC13(s35390a, S35390A_CMD_STATUS1, buf, sizeof(buf));
	if (err < 0) {
		FUNC2(&client->dev, "error checking 12/24 hour mode\n");
		goto exit_dummy;
	}
	if (buf[0] & S35390A_FLAG_24H)
		s35390a->twentyfourhour = 1;
	else
		s35390a->twentyfourhour = 0;

	if (FUNC12(client, &tm) < 0)
		FUNC3(&client->dev, "clock needs to be set\n");

	s35390a->rtc = FUNC10(s35390a_driver.driver.name,
				&client->dev, &s35390a_rtc_ops, THIS_MODULE);

	if (FUNC0(s35390a->rtc)) {
		err = FUNC1(s35390a->rtc);
		goto exit_dummy;
	}
	return 0;

exit_dummy:
	for (i = 1; i < 8; ++i)
		if (s35390a->client[i])
			FUNC7(s35390a->client[i]);
	FUNC8(s35390a);
	FUNC6(client, NULL);

exit:
	return err;
}