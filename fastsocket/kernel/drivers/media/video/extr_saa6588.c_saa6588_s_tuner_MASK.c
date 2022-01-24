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
struct v4l2_tuner {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct saa6588 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct saa6588*) ; 
 struct saa6588* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, struct v4l2_tuner *vt)
{
	struct saa6588 *s = FUNC1(sd);

	FUNC0(s);
	return 0;
}