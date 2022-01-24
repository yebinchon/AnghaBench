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
struct v4l2_tuner {scalar_t__ index; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct bttv {scalar_t__ tuner_type; int /*<<< orphan*/  (* audio_mode_gpio ) (struct bttv*,struct v4l2_tuner*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ TUNER_ABSENT ; 
 int /*<<< orphan*/  V4L2_TUNER_RADIO ; 
 int /*<<< orphan*/  FUNC0 (struct bttv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_tuner*) ; 
 int /*<<< orphan*/  g_tuner ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bttv*,struct v4l2_tuner*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tuner ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv, struct v4l2_tuner *t)
{
	struct bttv_fh *fh = priv;
	struct bttv *btv = fh->btv;

	if (btv->tuner_type == TUNER_ABSENT)
		return -EINVAL;
	if (0 != t->index)
		return -EINVAL;
	FUNC1(t->name, "Radio");
	t->type = V4L2_TUNER_RADIO;

	FUNC0(btv, tuner, g_tuner, t);

	if (btv->audio_mode_gpio)
		btv->audio_mode_gpio(btv, t, 0);

	return 0;
}