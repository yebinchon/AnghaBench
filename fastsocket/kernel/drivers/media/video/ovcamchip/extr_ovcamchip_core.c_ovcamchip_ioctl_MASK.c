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
struct ovcamchip {int initialized; int subtype; int mono; TYPE_1__* sops; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int (* init ) (struct i2c_client*) ;long (* command ) (struct i2c_client*,unsigned int,void*) ;} ;

/* Variables and functions */
 int CC_OV7620 ; 
 long EPERM ; 
#define  OVCAMCHIP_CMD_INITIALIZE 129 
#define  OVCAMCHIP_CMD_Q_SUBTYPE 128 
 int mono ; 
 int FUNC0 (struct i2c_client*) ; 
 long FUNC1 (struct i2c_client*,unsigned int,void*) ; 
 struct ovcamchip* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,char*) ; 
 struct i2c_client* FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_subdev*,char*) ; 

__attribute__((used)) static long FUNC7(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
{
	struct ovcamchip *ov = FUNC2(sd);
	struct i2c_client *c = FUNC4(sd);

	if (!ov->initialized &&
	    cmd != OVCAMCHIP_CMD_Q_SUBTYPE &&
	    cmd != OVCAMCHIP_CMD_INITIALIZE) {
		FUNC3(sd, "Camera chip not initialized yet!\n");
		return -EPERM;
	}

	switch (cmd) {
	case OVCAMCHIP_CMD_Q_SUBTYPE:
	{
		*(int *)arg = ov->subtype;
		return 0;
	}
	case OVCAMCHIP_CMD_INITIALIZE:
	{
		int rc;

		if (mono == -1)
			ov->mono = *(int *)arg;
		else
			ov->mono = mono;

		if (ov->mono) {
			if (ov->subtype != CC_OV7620)
				FUNC6(sd, "Monochrome not "
					"implemented for this chip\n");
			else
				FUNC5(sd, "Initializing chip as "
					"monochrome\n");
		}

		rc = ov->sops->init(c);
		if (rc < 0)
			return rc;

		ov->initialized = 1;
		return 0;
	}
	default:
		return ov->sops->command(c, cmd, arg);
	}
}