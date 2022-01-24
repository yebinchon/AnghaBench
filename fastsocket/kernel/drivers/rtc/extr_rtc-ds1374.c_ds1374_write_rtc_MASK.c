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
typedef  int u32 ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct i2c_client*,int,int,int*) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client, u32 time,
                            int reg, int nbytes)
{
	u8 buf[4];
	int i;

	if (nbytes > 4) {
		FUNC0(1);
		return -EINVAL;
	}

	for (i = 0; i < nbytes; i++) {
		buf[i] = time & 0xff;
		time >>= 8;
	}

	return FUNC1(client, reg, nbytes, buf);
}