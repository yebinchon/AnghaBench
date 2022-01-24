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
struct v4l2_frmivalenum {int dummy; } ;
struct file {int dummy; } ;
struct cafe_camera {int /*<<< orphan*/  s_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  enum_frameintervals ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct cafe_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frmivalenum*) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC3(struct file *filp, void *priv,
		struct v4l2_frmivalenum *interval)
{
	struct cafe_camera *cam = priv;
	int ret;

	FUNC0(&cam->s_mutex);
	ret = FUNC2(cam, video, enum_frameintervals, interval);
	FUNC1(&cam->s_mutex);
	return ret;
}