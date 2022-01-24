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
struct v4l2_frequency {scalar_t__ tuner; scalar_t__ type; int /*<<< orphan*/  frequency; } ;
struct file {int dummy; } ;
struct bttv_fh {int /*<<< orphan*/  prio; struct bttv* btv; } ;
struct bttv {int /*<<< orphan*/  freq; scalar_t__ radio_user; scalar_t__ has_matchbox; int /*<<< orphan*/  prio; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_TUNER_ANALOG_TV ; 
 scalar_t__ V4L2_TUNER_RADIO ; 
 int /*<<< orphan*/  FUNC0 (struct bttv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency*) ; 
 int /*<<< orphan*/  s_frequency ; 
 int /*<<< orphan*/  FUNC1 (struct bttv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tuner ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
					struct v4l2_frequency *f)
{
	struct bttv_fh *fh  = priv;
	struct bttv *btv = fh->btv;
	int err;

	if (FUNC2(f->tuner != 0))
		return -EINVAL;

	err = FUNC3(&btv->prio, fh->prio);
	if (FUNC2(err))
		goto err;

	if (FUNC2(f->type != (btv->radio_user
		? V4L2_TUNER_RADIO : V4L2_TUNER_ANALOG_TV))) {
		err = -EINVAL;
		goto err;
	}
	btv->freq = f->frequency;
	FUNC0(btv, tuner, s_frequency, f);
	if (btv->has_matchbox && btv->radio_user)
		FUNC1(btv, btv->freq);
err:

	return 0;
}