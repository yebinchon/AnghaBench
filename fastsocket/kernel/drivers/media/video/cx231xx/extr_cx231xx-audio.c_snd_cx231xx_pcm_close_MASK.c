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
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {scalar_t__ users; int shutdown; } ;
struct cx231xx {int mute; int /*<<< orphan*/  wq_trigger; int /*<<< orphan*/  stream_started; TYPE_1__ adev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  Audio ; 
 int /*<<< orphan*/  INDEX_AUDIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct cx231xx* FUNC9 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream)
{
	int ret;
	struct cx231xx *dev = FUNC9(substream);

	FUNC5("closing device\n");

	/* inform hardware to stop streaming */
	FUNC6(&dev->lock);
	ret = FUNC2(dev, 0, Audio);

	/* set alternate setting for audio interface */
	/* 1 - 48000 samples per sec */
	ret = FUNC4(dev, INDEX_AUDIO, 0);
	if (ret < 0) {
		FUNC3("failed to set alternate setting !\n");

		FUNC7(&dev->lock);
		return ret;
	}

	dev->mute = 1;
	dev->adev.users--;
	FUNC7(&dev->lock);

	if (dev->adev.users == 0 && dev->adev.shutdown == 1) {
		FUNC5("audio users: %d\n", dev->adev.users);
		FUNC5("disabling audio stream!\n");
		dev->adev.shutdown = 0;
		FUNC5("released lock\n");
		if (FUNC0(&dev->stream_started) > 0) {
			FUNC1(&dev->stream_started, 0);
			FUNC8(&dev->wq_trigger);
		}
	}
	return 0;
}