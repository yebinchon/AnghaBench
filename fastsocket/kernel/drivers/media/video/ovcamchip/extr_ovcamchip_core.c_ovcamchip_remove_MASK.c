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
struct v4l2_subdev {int dummy; } ;
struct ovcamchip {TYPE_1__* sops; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int (* free ) (struct i2c_client*) ;} ;

/* Variables and functions */
 struct v4l2_subdev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct ovcamchip*) ; 
 int FUNC2 (struct i2c_client*) ; 
 struct ovcamchip* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct v4l2_subdev *sd = FUNC0(client);
	struct ovcamchip *ov = FUNC3(sd);
	int rc;

	FUNC4(sd);
	rc = ov->sops->free(client);
	if (rc < 0)
		return rc;

	FUNC1(ov);
	return 0;
}