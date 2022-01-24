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
struct v4l2_tuner {scalar_t__ index; int capability; int /*<<< orphan*/  signal; int /*<<< orphan*/  audmode; int /*<<< orphan*/  rxsubchans; int /*<<< orphan*/  rangehigh; int /*<<< orphan*/  rangelow; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct fmr2 {int /*<<< orphan*/  lock; scalar_t__ stereo; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RSF16_MAXFREQ ; 
 int /*<<< orphan*/  RSF16_MINFREQ ; 
 int V4L2_TUNER_CAP_LOW ; 
 int V4L2_TUNER_CAP_STEREO ; 
 int /*<<< orphan*/  V4L2_TUNER_MODE_STEREO ; 
 int /*<<< orphan*/  V4L2_TUNER_RADIO ; 
 int /*<<< orphan*/  V4L2_TUNER_SUB_MONO ; 
 int /*<<< orphan*/  V4L2_TUNER_SUB_STEREO ; 
 int /*<<< orphan*/  FUNC0 (struct fmr2*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct fmr2* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv,
					struct v4l2_tuner *v)
{
	struct fmr2 *fmr2 = FUNC4(file);

	if (v->index > 0)
		return -EINVAL;

	FUNC3(v->name, "FM", sizeof(v->name));
	v->type = V4L2_TUNER_RADIO;

	v->rangelow = RSF16_MINFREQ;
	v->rangehigh = RSF16_MAXFREQ;
	v->rxsubchans = fmr2->stereo ? V4L2_TUNER_SUB_STEREO :
					V4L2_TUNER_SUB_MONO;
	v->capability = V4L2_TUNER_CAP_STEREO | V4L2_TUNER_CAP_LOW;
	v->audmode = V4L2_TUNER_MODE_STEREO;
	FUNC1(&fmr2->lock);
	v->signal = FUNC0(fmr2);
	FUNC2(&fmr2->lock);
	return 0;
}