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
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct mxb {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 long EINVAL ; 
 long ENOIOCTLCMD ; 
 int MXB_AUDIOS ; 
#define  MXB_S_AUDIO_CD 129 
#define  MXB_S_AUDIO_LINE 128 
 int /*<<< orphan*/  FUNC2 (struct mxb*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mxb*,int) ; 

__attribute__((used)) static long FUNC4(struct file *file, void *fh, int cmd, void *arg)
{
	struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
	struct mxb *mxb = (struct mxb *)dev->ext_priv;

	switch (cmd) {
	case MXB_S_AUDIO_CD:
	{
		int i = *(int *)arg;

		if (i < 0 || i >= MXB_AUDIOS) {
			FUNC0(("illegal argument to MXB_S_AUDIO_CD: i:%d.\n", i));
			return -EINVAL;
		}

		FUNC1(("MXB_S_AUDIO_CD: i:%d.\n", i));

		FUNC2(mxb, i);
		return 0;
	}
	case MXB_S_AUDIO_LINE:
	{
		int i = *(int *)arg;

		if (i < 0 || i >= MXB_AUDIOS) {
			FUNC0(("illegal argument to MXB_S_AUDIO_LINE: i:%d.\n", i));
			return -EINVAL;
		}

		FUNC1(("MXB_S_AUDIO_LINE: i:%d.\n", i));
		FUNC3(mxb, i);
		return 0;
	}
	default:
/*
		DEB2(printk("does not handle this ioctl.\n"));
*/
		return -ENOIOCTLCMD;
	}
	return 0;
}