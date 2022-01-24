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
typedef  int u16 ;
struct st6422_settings {TYPE_1__* ctrls; } ;
struct sd {struct st6422_settings* sensor_priv; } ;
struct TYPE_2__ {int val; } ;

/* Variables and functions */
 size_t EXPOSURE ; 
 int FUNC0 (struct sd*,int,int) ; 

__attribute__((used)) static int FUNC1(struct sd *sd)
{
	struct st6422_settings *sensor_settings = sd->sensor_priv;
	u16 expo;
	int err;

	expo = sensor_settings->ctrls[EXPOSURE].val;
	err = FUNC0(sd, 0x143d, expo & 0xff);
	if (err < 0)
		return err;

	return FUNC0(sd, 0x143e, expo >> 8);
}