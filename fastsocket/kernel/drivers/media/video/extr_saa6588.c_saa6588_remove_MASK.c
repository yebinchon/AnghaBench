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
struct saa6588 {struct saa6588* buffer; int /*<<< orphan*/  work; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct v4l2_subdev* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct saa6588*) ; 
 struct saa6588* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct v4l2_subdev *sd = FUNC1(client);
	struct saa6588 *s = FUNC3(sd);

	FUNC4(sd);

	FUNC0(&s->work);

	FUNC2(s->buffer);
	FUNC2(s);
	return 0;
}