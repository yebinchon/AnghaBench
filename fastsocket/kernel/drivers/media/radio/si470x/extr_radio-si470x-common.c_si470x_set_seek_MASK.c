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
struct si470x_device {int* registers; TYPE_1__* videodev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 size_t POWERCFG ; 
 int POWERCFG_SEEK ; 
 int POWERCFG_SEEKUP ; 
 int POWERCFG_SKMODE ; 
 size_t STATUSRSSI ; 
 int STATUSRSSI_SF ; 
 int STATUSRSSI_STC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  seek_timeout ; 
 int FUNC2 (struct si470x_device*,size_t) ; 
 int FUNC3 (struct si470x_device*,size_t) ; 
 int FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct si470x_device *radio,
		unsigned int wrap_around, unsigned int seek_upward)
{
	int retval = 0;
	unsigned long timeout;
	bool timed_out = 0;

	/* start seeking */
	radio->registers[POWERCFG] |= POWERCFG_SEEK;
	if (wrap_around == 1)
		radio->registers[POWERCFG] &= ~POWERCFG_SKMODE;
	else
		radio->registers[POWERCFG] |= POWERCFG_SKMODE;
	if (seek_upward == 1)
		radio->registers[POWERCFG] |= POWERCFG_SEEKUP;
	else
		radio->registers[POWERCFG] &= ~POWERCFG_SEEKUP;
	retval = FUNC3(radio, POWERCFG);
	if (retval < 0)
		goto done;

	/* wait till seek operation has completed */
	timeout = jiffies + FUNC1(seek_timeout);
	do {
		retval = FUNC2(radio, STATUSRSSI);
		if (retval < 0)
			goto stop;
		timed_out = FUNC4(jiffies, timeout);
	} while (((radio->registers[STATUSRSSI] & STATUSRSSI_STC) == 0) &&
		(!timed_out));
	if ((radio->registers[STATUSRSSI] & STATUSRSSI_STC) == 0)
		FUNC0(&radio->videodev->dev, "seek does not complete\n");
	if (radio->registers[STATUSRSSI] & STATUSRSSI_SF)
		FUNC0(&radio->videodev->dev,
			"seek failed / band limit reached\n");
	if (timed_out)
		FUNC0(&radio->videodev->dev,
			"seek timed out after %u ms\n", seek_timeout);

stop:
	/* stop seeking */
	radio->registers[POWERCFG] &= ~POWERCFG_SEEK;
	retval = FUNC3(radio, POWERCFG);

done:
	/* try again, if timed out */
	if ((retval == 0) && timed_out)
		retval = -EAGAIN;

	return retval;
}