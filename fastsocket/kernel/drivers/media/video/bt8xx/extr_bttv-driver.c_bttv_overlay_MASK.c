#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct file {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  tvnorm; int /*<<< orphan*/  setup_ok; } ;
struct bttv_fh {int /*<<< orphan*/  ovfmt; TYPE_4__ ov; int /*<<< orphan*/  do_crop; struct bttv* btv; } ;
struct bttv_buffer {int /*<<< orphan*/  crop; } ;
struct TYPE_6__ {int /*<<< orphan*/  nr; } ;
struct TYPE_5__ {int /*<<< orphan*/  base; } ;
struct bttv {TYPE_3__* crop; int /*<<< orphan*/  tvnorm; TYPE_2__ c; TYPE_1__ fbuf; } ;
struct TYPE_7__ {int /*<<< orphan*/  rect; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  RESOURCE_OVERLAY ; 
 int /*<<< orphan*/  FUNC0 (struct bttv*,TYPE_4__*,int /*<<< orphan*/ ,struct bttv_buffer*) ; 
 int FUNC1 (struct bttv*,struct bttv_fh*,struct bttv_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct bttv*,struct bttv_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 struct bttv_buffer* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *f, unsigned int on)
{
	struct bttv_fh *fh = f;
	struct bttv *btv = fh->btv;
	struct bttv_buffer *new;
	int retval = 0;

	if (on) {
		/* verify args */
		if (FUNC4(!btv->fbuf.base)) {
			return -EINVAL;
		}
		if (FUNC4(!fh->ov.setup_ok)) {
			FUNC3("bttv%d: overlay: !setup_ok\n", btv->c.nr);
			retval = -EINVAL;
		}
		if (retval)
			return retval;
	}

	if (!FUNC2(btv, fh, RESOURCE_OVERLAY))
		return -EBUSY;

	if (on) {
		fh->ov.tvnorm = btv->tvnorm;
		new = FUNC5(sizeof(*new));
		new->crop = btv->crop[!!fh->do_crop].rect;
		FUNC0(btv, &fh->ov, fh->ovfmt, new);
	} else {
		new = NULL;
	}

	/* switch over */
	retval = FUNC1(btv, fh, new);
	return retval;
}