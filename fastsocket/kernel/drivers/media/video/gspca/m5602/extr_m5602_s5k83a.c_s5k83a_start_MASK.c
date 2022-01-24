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
struct sd {struct s5k83a_priv* sensor_priv; } ;
struct s5k83a_priv {int /*<<< orphan*/  rotation_thread; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__**) ; 
 scalar_t__ SENSOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sd*,char*) ; 
 int FUNC2 (struct sd*,scalar_t__,scalar_t__) ; 
 int FUNC3 (struct sd*,scalar_t__,scalar_t__*,int) ; 
 int /*<<< orphan*/  rotation_thread_function ; 
 int FUNC4 (struct sd*,int) ; 
 scalar_t__** start_s5k83a ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct sd *sd)
{
	int i, err = 0;
	struct s5k83a_priv *sens_priv = sd->sensor_priv;

	/* Create another thread, polling the GPIO ports of the camera to check
	   if it got rotated. This is how the windows driver does it so we have
	   to assume that there is no better way of accomplishing this */
	sens_priv->rotation_thread = FUNC1(rotation_thread_function,
						    sd, "rotation thread");
	FUNC5(sens_priv->rotation_thread);

	/* Preinit the sensor */
	for (i = 0; i < FUNC0(start_s5k83a) && !err; i++) {
		u8 data[2] = {start_s5k83a[i][2], start_s5k83a[i][3]};
		if (start_s5k83a[i][0] == SENSOR)
			err = FUNC3(sd, start_s5k83a[i][1],
				data, 2);
		else
			err = FUNC2(sd, start_s5k83a[i][1],
				data[0]);
	}
	if (err < 0)
		return err;

	return FUNC4(sd, 1);
}