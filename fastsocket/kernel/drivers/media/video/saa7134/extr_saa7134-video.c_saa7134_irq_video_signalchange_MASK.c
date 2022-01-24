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
typedef  int u32 ;
struct saa7134_dev {int nosignal; int automute; TYPE_1__* mops; scalar_t__ ctl_automute; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* signal_change ) (struct saa7134_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SAA7134_STATUS_VIDEO1 ; 
 int /*<<< orphan*/  SAA7134_STATUS_VIDEO2 ; 
 int /*<<< orphan*/  SAA7134_SYNC_CTRL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char const*) ; 
 int /*<<< orphan*/  noninterlaced ; 
 int /*<<< orphan*/  FUNC1 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct saa7134_dev*) ; 

void FUNC7(struct saa7134_dev *dev)
{
	static const char *st[] = {
		"(no signal)", "NTSC", "PAL", "SECAM" };
	u32 st1,st2;

	st1 = FUNC4(SAA7134_STATUS_VIDEO1);
	st2 = FUNC4(SAA7134_STATUS_VIDEO2);
	FUNC0("DCSDT: pll: %s, sync: %s, norm: %s\n",
		(st1 & 0x40) ? "not locked" : "locked",
		(st2 & 0x40) ? "no"         : "yes",
		st[st1 & 0x03]);
	dev->nosignal = (st1 & 0x40) || (st2 & 0x40)  || !(st2 & 0x1);

	if (dev->nosignal) {
		/* no video signal -> mute audio */
		if (dev->ctl_automute)
			dev->automute = 1;
		FUNC2(dev);
	} else {
		/* wake up tvaudio audio carrier scan thread */
		FUNC1(dev);
	}

	if ((st2 & 0x80) && !noninterlaced && !dev->nosignal)
		FUNC3(SAA7134_SYNC_CTRL, 0x20);
	else
		FUNC5(SAA7134_SYNC_CTRL, 0x20);

	if (dev->mops && dev->mops->signal_change)
		dev->mops->signal_change(dev);
}