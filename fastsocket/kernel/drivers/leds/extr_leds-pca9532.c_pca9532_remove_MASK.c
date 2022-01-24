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
struct pca9532_data {int /*<<< orphan*/ * idev; int /*<<< orphan*/  work; TYPE_1__* leds; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int type; int /*<<< orphan*/  work; int /*<<< orphan*/  ldev; } ;

/* Variables and functions */
#define  PCA9532_TYPE_LED 130 
#define  PCA9532_TYPE_N2100_BEEP 129 
#define  PCA9532_TYPE_NONE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pca9532_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pca9532_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct pca9532_data *data = FUNC1(client);
	int i;
	for (i = 0; i < 16; i++)
		switch (data->leds[i].type) {
		case PCA9532_TYPE_NONE:
			break;
		case PCA9532_TYPE_LED:
			FUNC6(&data->leds[i].ldev);
			FUNC0(&data->leds[i].work);
			break;
		case PCA9532_TYPE_N2100_BEEP:
			if (data->idev != NULL) {
				FUNC4(data->idev);
				FUNC3(data->idev);
				FUNC0(&data->work);
				data->idev = NULL;
			}
			break;
		}

	FUNC5(data);
	FUNC2(client, NULL);
	return 0;
}