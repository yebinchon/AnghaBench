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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct i2c_client*,scalar_t__,int) ; 

__attribute__((used)) static inline int FUNC1(struct i2c_client *client, u8 reg,
					  u16 value)
{
	return FUNC0(client, reg, value & 0xFF)
	       && FUNC0(client, reg + 1, value >> 8);
}