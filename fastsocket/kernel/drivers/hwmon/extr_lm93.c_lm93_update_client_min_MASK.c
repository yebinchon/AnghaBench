#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
struct TYPE_6__ {void** offset; void** base; } ;
struct lm93_data {TYPE_3__ block10; int /*<<< orphan*/  block1; void*** block9; void** block8; void** block5; TYPE_2__* block4; void** block2; TYPE_1__* block7; void** block3; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {void* avg; void* cur; } ;
struct TYPE_4__ {void* max; void* min; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ LM93_REG_HOST_ERROR_1 ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int,int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC12 (struct i2c_client*,scalar_t__) ; 
 void* FUNC13 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct lm93_data*,struct i2c_client*) ; 

__attribute__((used)) static void FUNC15(struct lm93_data *data,
				   struct i2c_client *client)
{
	int i,j;
	u8 *ptr;

	FUNC11(&client->dev,"starting device update (block data disabled)\n");

	/* in1 - in16: values & limits */
	for (i = 0; i < 16; i++) {
		data->block3[i] =
			FUNC12(client, FUNC2(i));
		data->block7[i].min =
			FUNC12(client, FUNC4(i));
		data->block7[i].max =
			FUNC12(client, FUNC3(i));
	}

	/* temp1 - temp4: values */
	for (i = 0; i < 4; i++) {
		data->block2[i] =
			FUNC12(client, FUNC8(i));
	}

	/* prochot1 - prochot2: values */
	for (i = 0; i < 2; i++) {
		data->block4[i].cur =
			FUNC12(client, FUNC6(i));
		data->block4[i].avg =
			FUNC12(client, FUNC5(i));
	}

	/* fan1 - fan4: values & limits */
	for (i = 0; i < 4; i++) {
		data->block5[i] =
			FUNC13(client, FUNC0(i));
		data->block8[i] =
			FUNC13(client, FUNC1(i));
	}

	/* pwm control registers */
	for (i = 0; i < 2; i++) {
		for (j = 0; j < 4; j++) {
			data->block9[i][j] =
				FUNC12(client, FUNC7(i,j));
		}
	}

	/* alarm values */
	for (i = 0, ptr = (u8 *)(&data->block1); i < 8; i++) {
		*(ptr + i) =
			FUNC12(client, LM93_REG_HOST_ERROR_1 + i);
	}

	/* auto/pwm (base temp) registers */
	for (i = 0; i < 4; i++) {
		data->block10.base[i] =
			FUNC12(client, FUNC9(i));
	}

	/* auto/pwm (offset temp) registers */
	for (i = 0; i < 12; i++) {
		data->block10.offset[i] =
			FUNC12(client, FUNC10(i));
	}

	FUNC14(data, client);
}