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
typedef  int v4l2_std_id ;
struct file {int dummy; } ;
struct bttv_fh {int /*<<< orphan*/  prio; struct bttv* btv; } ;
struct bttv {int /*<<< orphan*/  prio; } ;
struct TYPE_2__ {int v4l2_id; } ;

/* Variables and functions */
 unsigned int BTTV_TVNORMS ; 
 int EINVAL ; 
 TYPE_1__* bttv_tvnorms ; 
 int /*<<< orphan*/  FUNC0 (struct bttv*,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv, v4l2_std_id *id)
{
	struct bttv_fh *fh  = priv;
	struct bttv *btv = fh->btv;
	unsigned int i;
	int err;

	err = FUNC1(&btv->prio, fh->prio);
	if (err)
		goto err;

	for (i = 0; i < BTTV_TVNORMS; i++)
		if (*id & bttv_tvnorms[i].v4l2_id)
			break;
	if (i == BTTV_TVNORMS) {
		err = -EINVAL;
		goto err;
	}

	FUNC0(btv, i);

err:

	return err;
}