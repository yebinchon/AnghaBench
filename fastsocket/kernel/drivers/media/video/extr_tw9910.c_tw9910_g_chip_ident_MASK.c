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
struct v4l2_dbg_chip_ident {int /*<<< orphan*/  revision; int /*<<< orphan*/  ident; } ;
struct tw9910_priv {int /*<<< orphan*/  revision; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_IDENT_TW9910 ; 
 struct tw9910_priv* FUNC0 (struct i2c_client*) ; 
 struct i2c_client* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd,
			       struct v4l2_dbg_chip_ident *id)
{
	struct i2c_client *client = FUNC1(sd);
	struct tw9910_priv *priv = FUNC0(client);

	id->ident = V4L2_IDENT_TW9910;
	id->revision = priv->revision;

	return 0;
}