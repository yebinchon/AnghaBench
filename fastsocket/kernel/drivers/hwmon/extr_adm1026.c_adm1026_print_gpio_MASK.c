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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct adm1026_data {int config2; int* gpio_config; int config3; } ;

/* Variables and functions */
 int CFG3_GPIO16_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct adm1026_data* FUNC1 (struct i2c_client*) ; 

__attribute__((used)) static void FUNC2(struct i2c_client *client)
{
	struct adm1026_data *data = FUNC1(client);
	int i;

	FUNC0(&client->dev, "GPIO config is:\n");
	for (i = 0;i <= 7;++i) {
		if (data->config2 & (1 << i)) {
			FUNC0(&client->dev, "\t%sGP%s%d\n",
				data->gpio_config[i] & 0x02 ? "" : "!",
				data->gpio_config[i] & 0x01 ? "OUT" : "IN",
				i);
		} else {
			FUNC0(&client->dev, "\tFAN%d\n", i);
		}
	}
	for (i = 8;i <= 15;++i) {
		FUNC0(&client->dev, "\t%sGP%s%d\n",
			data->gpio_config[i] & 0x02 ? "" : "!",
			data->gpio_config[i] & 0x01 ? "OUT" : "IN",
			i);
	}
	if (data->config3 & CFG3_GPIO16_ENABLE) {
		FUNC0(&client->dev, "\t%sGP%s16\n",
			data->gpio_config[16] & 0x02 ? "" : "!",
			data->gpio_config[16] & 0x01 ? "OUT" : "IN");
	} else {
		/* GPIO16 is THERM */
		FUNC0(&client->dev, "\tTHERM\n");
	}
}