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
typedef  int u16 ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_client*,int*,int) ; 

__attribute__((used)) static int FUNC1(struct i2c_client *client, u16 word)
{
	u8 buf[2] = { word & 0xff, word >> 8, };
	int status;

	status = FUNC0(client, buf, 2);
	return (status < 0) ? status : 0;
}