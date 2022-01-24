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
struct video_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ pre_emphasis; int /*<<< orphan*/  users; } ;
struct poseidon {int state; int /*<<< orphan*/  lock; int /*<<< orphan*/  kref; TYPE_1__ radio_data; int /*<<< orphan*/  interface; } ;
struct file {struct poseidon* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int POSEIDON_STATE_DISCONNECT ; 
 int POSEIDON_STATE_FM ; 
 scalar_t__ TLG_TUNE_ASTD_FM_EUR ; 
 int /*<<< orphan*/  debug_mode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct poseidon*) ; 
 int /*<<< orphan*/  FUNC4 (struct video_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct video_device* FUNC7 (struct file*) ; 
 struct poseidon* FUNC8 (struct video_device*) ; 

__attribute__((used)) static int FUNC9(struct file *filp)
{
	struct video_device *vfd = FUNC7(filp);
	struct poseidon *p = FUNC8(vfd);
	int ret = 0;

	if (!p)
		return -1;

	FUNC1(&p->lock);
	if (p->state & POSEIDON_STATE_DISCONNECT) {
		ret = -ENODEV;
		goto out;
	}

	if (p->state && !(p->state & POSEIDON_STATE_FM)) {
		ret = -EBUSY;
		goto out;
	}

	FUNC5(p->interface);
	if (0 == p->state) {
		/* default pre-emphasis */
		if (p->radio_data.pre_emphasis == 0)
			p->radio_data.pre_emphasis = TLG_TUNE_ASTD_FM_EUR;
		FUNC4(vfd, debug_mode);

		ret = FUNC3(p);
		if (ret < 0) {
			FUNC6(p->interface);
			goto out;
		}
		p->state |= POSEIDON_STATE_FM;
	}
	p->radio_data.users++;
	FUNC0(&p->kref);
	filp->private_data = p;
out:
	FUNC2(&p->lock);
	return ret;
}