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
struct v4l2_tuner {scalar_t__ index; double rangelow; int rangehigh; int rxsubchans; int /*<<< orphan*/  signal; int /*<<< orphan*/  audmode; int /*<<< orphan*/  capability; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct trust {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_TUNER_CAP_LOW ; 
 int /*<<< orphan*/  V4L2_TUNER_MODE_MONO ; 
 int /*<<< orphan*/  V4L2_TUNER_MODE_STEREO ; 
 int /*<<< orphan*/  V4L2_TUNER_RADIO ; 
 int V4L2_TUNER_SUB_MONO ; 
 int V4L2_TUNER_SUB_STEREO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct trust*) ; 
 scalar_t__ FUNC2 (struct trust*) ; 
 struct trust* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
				struct v4l2_tuner *v)
{
	struct trust *tr = FUNC3(file);

	if (v->index > 0)
		return -EINVAL;

	FUNC0(v->name, "FM", sizeof(v->name));
	v->type = V4L2_TUNER_RADIO;
	v->rangelow = 87.5 * 16000;
	v->rangehigh = 108 * 16000;
	v->rxsubchans = V4L2_TUNER_SUB_MONO | V4L2_TUNER_SUB_STEREO;
	v->capability = V4L2_TUNER_CAP_LOW;
	if (FUNC2(tr))
		v->audmode = V4L2_TUNER_MODE_STEREO;
	else
		v->audmode = V4L2_TUNER_MODE_MONO;
	v->signal = FUNC1(tr);
	return 0;
}