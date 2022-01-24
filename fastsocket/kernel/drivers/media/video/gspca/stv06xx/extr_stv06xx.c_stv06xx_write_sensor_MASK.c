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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sd {TYPE_1__* sensor; } ;
struct TYPE_2__ {int i2c_len; } ;

/* Variables and functions */
 int FUNC0 (struct sd*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct sd*,int /*<<< orphan*/ *,int) ; 

int FUNC2(struct sd *sd, u8 address, u16 value)
{
	if (sd->sensor->i2c_len == 2) {
		u16 data[2] = { address, value };
		return FUNC1(sd, data, 1);
	} else {
		u8 data[2] = { address, value };
		return FUNC0(sd, data, 1);
	}
}