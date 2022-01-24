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
struct v4l2_tuner {scalar_t__ index; } ;
struct file {int dummy; } ;
struct bttv_fh {int /*<<< orphan*/  prio; struct bttv* btv; } ;
struct bttv {scalar_t__ tuner_type; int /*<<< orphan*/  (* audio_mode_gpio ) (struct bttv*,struct v4l2_tuner*,int) ;int /*<<< orphan*/  prio; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ TUNER_ABSENT ; 
 int /*<<< orphan*/  FUNC0 (struct bttv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_tuner*) ; 
 int /*<<< orphan*/  s_tuner ; 
 int /*<<< orphan*/  FUNC1 (struct bttv*,struct v4l2_tuner*,int) ; 
 int /*<<< orphan*/  tuner ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
					struct v4l2_tuner *t)
{
	struct bttv_fh *fh  = priv;
	struct bttv *btv = fh->btv;
	int err;

	if (FUNC2(0 != t->index))
		return -EINVAL;

	if (FUNC2(btv->tuner_type == TUNER_ABSENT)) {
		err = -EINVAL;
		goto err;
	}

	err = FUNC3(&btv->prio, fh->prio);
	if (FUNC2(err))
		goto err;

	FUNC0(btv, tuner, s_tuner, t);

	if (btv->audio_mode_gpio)
		btv->audio_mode_gpio(btv, t, 1);

err:

	return 0;
}