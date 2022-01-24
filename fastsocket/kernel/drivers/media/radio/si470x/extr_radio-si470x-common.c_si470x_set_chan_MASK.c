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
struct si470x_device {unsigned short* registers; TYPE_1__* videodev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t CHANNEL ; 
 unsigned short CHANNEL_CHAN ; 
 unsigned short CHANNEL_TUNE ; 
 size_t STATUSRSSI ; 
 int STATUSRSSI_STC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct si470x_device*,size_t) ; 
 int FUNC3 (struct si470x_device*,size_t) ; 
 int FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  tune_timeout ; 

__attribute__((used)) static int FUNC5(struct si470x_device *radio, unsigned short chan)
{
	int retval;
	unsigned long timeout;
	bool timed_out = 0;

	/* start tuning */
	radio->registers[CHANNEL] &= ~CHANNEL_CHAN;
	radio->registers[CHANNEL] |= CHANNEL_TUNE | chan;
	retval = FUNC3(radio, CHANNEL);
	if (retval < 0)
		goto done;

	/* wait till tune operation has completed */
	timeout = jiffies + FUNC1(tune_timeout);
	do {
		retval = FUNC2(radio, STATUSRSSI);
		if (retval < 0)
			goto stop;
		timed_out = FUNC4(jiffies, timeout);
	} while (((radio->registers[STATUSRSSI] & STATUSRSSI_STC) == 0) &&
		(!timed_out));
	if ((radio->registers[STATUSRSSI] & STATUSRSSI_STC) == 0)
		FUNC0(&radio->videodev->dev, "tune does not complete\n");
	if (timed_out)
		FUNC0(&radio->videodev->dev,
			"tune timed out after %u ms\n", tune_timeout);

stop:
	/* stop tuning */
	radio->registers[CHANNEL] &= ~CHANNEL_TUNE;
	retval = FUNC3(radio, CHANNEL);

done:
	return retval;
}