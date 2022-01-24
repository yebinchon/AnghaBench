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
struct mt9m111 {int /*<<< orphan*/  autowhitebalance; int /*<<< orphan*/  autoexposure; int /*<<< orphan*/  gain; int /*<<< orphan*/  vflip; int /*<<< orphan*/  hflip; int /*<<< orphan*/  rect; TYPE_1__* fmt; int /*<<< orphan*/  context; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT9M111_RMB_MIRROR_COLS ; 
 int /*<<< orphan*/  MT9M111_RMB_MIRROR_ROWS ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 struct mt9m111* FUNC7 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client)
{
	struct mt9m111 *mt9m111 = FUNC7(client);

	FUNC2(client, mt9m111->context);
	FUNC5(client, mt9m111->fmt->code);
	FUNC6(client, &mt9m111->rect);
	FUNC3(client, mt9m111->hflip, MT9M111_RMB_MIRROR_COLS);
	FUNC3(client, mt9m111->vflip, MT9M111_RMB_MIRROR_ROWS);
	FUNC4(client, mt9m111->gain);
	FUNC0(client, mt9m111->autoexposure);
	FUNC1(client, mt9m111->autowhitebalance);
	return 0;
}