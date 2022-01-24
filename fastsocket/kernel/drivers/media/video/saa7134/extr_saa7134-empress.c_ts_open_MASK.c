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
struct TYPE_2__ {int /*<<< orphan*/  vb_lock; } ;
struct saa7134_dev {TYPE_1__ empress_tsq; int /*<<< orphan*/  empress_users; } ;
struct file {struct saa7134_dev* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  SAA7134_AUDIO_MUTE_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 struct video_device* FUNC7 (struct file*) ; 
 int /*<<< orphan*/  FUNC8 (struct video_device*) ; 
 struct saa7134_dev* FUNC9 (struct file*) ; 

__attribute__((used)) static int FUNC10(struct file *file)
{
	struct video_device *vdev = FUNC7(file);
	struct saa7134_dev *dev = FUNC9(file);
	int err;

	FUNC2("open dev=%s\n", FUNC8(vdev));
	err = -EBUSY;
	if (!FUNC3(&dev->empress_tsq.vb_lock))
		return err;
	if (FUNC1(&dev->empress_users))
		goto done;

	/* Unmute audio */
	FUNC6(SAA7134_AUDIO_MUTE_CTRL,
		FUNC5(SAA7134_AUDIO_MUTE_CTRL) & ~(1 << 6));

	FUNC0(&dev->empress_users);
	file->private_data = dev;
	err = 0;

done:
	FUNC4(&dev->empress_tsq.vb_lock);
	return err;
}