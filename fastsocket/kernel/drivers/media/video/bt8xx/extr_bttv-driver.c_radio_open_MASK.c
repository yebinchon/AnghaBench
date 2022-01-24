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
struct file {struct bttv_fh* private_data; } ;
struct bttv_fh {int /*<<< orphan*/  prio; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr; } ;
struct bttv {int /*<<< orphan*/  radio_user; int /*<<< orphan*/  prio; struct bttv_fh init; TYPE_1__ c; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TVAUDIO_INPUT_RADIO ; 
 int /*<<< orphan*/  FUNC0 (struct bttv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bttv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct bttv_fh* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_radio ; 
 int /*<<< orphan*/  tuner ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct video_device* FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (struct video_device*) ; 
 struct bttv* FUNC8 (struct file*) ; 

__attribute__((used)) static int FUNC9(struct file *file)
{
	struct video_device *vdev = FUNC6(file);
	struct bttv *btv = FUNC8(file);
	struct bttv_fh *fh;

	FUNC2("bttv: open dev=%s\n", FUNC7(vdev));

	FUNC2("bttv%d: open called (radio)\n",btv->c.nr);

	/* allocate per filehandle data */
	fh = FUNC3(sizeof(*fh), GFP_KERNEL);
	if (FUNC4(!fh))
		return -ENOMEM;
	file->private_data = fh;
	*fh = btv->init;

	FUNC5(&btv->prio, &fh->prio);

	btv->radio_user++;

	FUNC1(btv, tuner, s_radio);
	FUNC0(btv,TVAUDIO_INPUT_RADIO);

	return 0;
}