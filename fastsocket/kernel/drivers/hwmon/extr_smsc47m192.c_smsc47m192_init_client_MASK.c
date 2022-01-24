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
typedef  int u8 ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMSC47M192_REG_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SMSC47M192_REG_SFR ; 
 int /*<<< orphan*/ * SMSC47M192_REG_TEMP_MAX ; 
 int /*<<< orphan*/ * SMSC47M192_REG_TEMP_MIN ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct i2c_client *client)
{
	int i;
	u8 config = FUNC2(client, SMSC47M192_REG_CONFIG);
	u8 sfr = FUNC2(client, SMSC47M192_REG_SFR);

	/* select cycle mode (pause 1 sec between updates) */
	FUNC3(client, SMSC47M192_REG_SFR,
						(sfr & 0xfd) | 0x02);
	if (!(config & 0x01)) {
		/* initialize alarm limits */
		for (i=0; i<8; i++) {
			FUNC3(client,
				FUNC1(i), 0);
			FUNC3(client,
				FUNC0(i), 0xff);
		}
		for (i=0; i<3; i++) {
			FUNC3(client,
				SMSC47M192_REG_TEMP_MIN[i], 0x80);
			FUNC3(client,
				SMSC47M192_REG_TEMP_MAX[i], 0x7f);
		}

		/* start monitoring */
		FUNC3(client, SMSC47M192_REG_CONFIG,
						(config & 0xf7) | 0x01);
	}
}