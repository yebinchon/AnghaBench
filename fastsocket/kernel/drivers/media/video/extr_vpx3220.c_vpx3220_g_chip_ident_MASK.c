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
struct vpx3220 {int /*<<< orphan*/  ident; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_dbg_chip_ident {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct vpx3220* FUNC0 (struct v4l2_subdev*) ; 
 int FUNC1 (struct i2c_client*,struct v4l2_dbg_chip_ident*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, struct v4l2_dbg_chip_ident *chip)
{
	struct vpx3220 *decoder = FUNC0(sd);
	struct i2c_client *client = FUNC2(sd);

	return FUNC1(client, chip, decoder->ident, 0);
}