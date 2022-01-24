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
struct bbc_i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bbc_i2c_client*,char*,int) ; 

int FUNC1(struct bbc_i2c_client *client,
		     char *buf, int len, int off)
{
	int ret = 0;

	while (len > 0) {
		int err = FUNC0(client, buf, off);
		if (err < 0) {
			ret = err;
			break;
		}
		len--;
		buf++;
		off++;
	}

	return ret;
}