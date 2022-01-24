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
typedef  int /*<<< orphan*/  u32 ;
struct i2c_client {int dummy; } ;
struct firmware {int size; int* data; } ;
struct cx25840_state {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 int FWSEND ; 
 int FUNC1 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*) ; 
 int FUNC5 (struct i2c_client*,int*,int) ; 
 char* FUNC6 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*) ; 
 scalar_t__ FUNC8 (struct cx25840_state*) ; 
 scalar_t__ FUNC9 (struct cx25840_state*) ; 
 int /*<<< orphan*/  FUNC10 (int*,int const*,int) ; 
 int FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct firmware const*) ; 
 scalar_t__ FUNC13 (struct firmware const**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_client*) ; 
 struct cx25840_state* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct i2c_client*,char*,...) ; 

int FUNC17(struct i2c_client *client)
{
	struct cx25840_state *state = FUNC15(FUNC7(client));
	const struct firmware *fw = NULL;
	u8 buffer[FWSEND];
	const u8 *ptr;
	const char *fwname = FUNC6(client);
	int size, retval;
	int MAX_BUF_SIZE = FWSEND;
	u32 gpio_oe = 0, gpio_da = 0;

	if (FUNC9(state)) {
		/* Preserve the GPIO OE and output bits */
		gpio_oe = FUNC2(client, 0x160);
		gpio_da = FUNC2(client, 0x164);
	}

	if (FUNC8(state) && MAX_BUF_SIZE > 16) {
		FUNC16(client, " Firmware download size changed to 16 bytes max length\n");
		MAX_BUF_SIZE = 16;  /* cx231xx cannot accept more than 16 bytes at a time */
	}

	if (FUNC13(&fw, fwname, FUNC0(client)) != 0) {
		FUNC16(client, "unable to open firmware %s\n", fwname);
		return -EINVAL;
	}

	FUNC14(client);

	buffer[0] = 0x08;
	buffer[1] = 0x02;

	size = fw->size;
	ptr = fw->data;
	while (size > 0) {
		int len = FUNC11(MAX_BUF_SIZE - 2, size);

		FUNC10(buffer + 2, ptr, len);

		retval = FUNC5(client, buffer, len + 2);

		if (retval < 0) {
			FUNC12(fw);
			return retval;
		}

		size -= len;
		ptr += len;
	}

	FUNC4(client);

	size = fw->size;
	FUNC12(fw);

	if (FUNC9(state)) {
		/* Restore GPIO configuration after f/w load */
		FUNC3(client, 0x160, gpio_oe);
		FUNC3(client, 0x164, gpio_da);
	}

	return FUNC1(client, size);
}