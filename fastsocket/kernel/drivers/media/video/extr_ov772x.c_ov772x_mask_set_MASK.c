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
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (struct i2c_client*,int) ; 
 int FUNC1 (struct i2c_client*,int,int) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client,
					  u8  command,
					  u8  mask,
					  u8  set)
{
	s32 val = FUNC0(client, command);
	if (val < 0)
		return val;

	val &= ~mask;
	val |= set & mask;

	return FUNC1(client, command, val);
}