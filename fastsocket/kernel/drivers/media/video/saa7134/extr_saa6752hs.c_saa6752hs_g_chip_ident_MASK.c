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
struct v4l2_subdev {int dummy; } ;
struct v4l2_dbg_chip_ident {int dummy; } ;
struct saa6752hs_state {int /*<<< orphan*/  revision; int /*<<< orphan*/  chip; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct saa6752hs_state* FUNC0 (struct v4l2_subdev*) ; 
 int FUNC1 (struct i2c_client*,struct v4l2_dbg_chip_ident*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, struct v4l2_dbg_chip_ident *chip)
{
	struct i2c_client *client = FUNC2(sd);
	struct saa6752hs_state *h = FUNC0(sd);

	return FUNC1(client,
			chip, h->chip, h->revision);
}