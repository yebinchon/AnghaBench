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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct cx231xx* private_data; int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {struct snd_pcm_substream* capture_pcm_substream; int /*<<< orphan*/  users; } ;
struct cx231xx {TYPE_1__ adev; int /*<<< orphan*/  lock; scalar_t__ USE_ISO; scalar_t__ mute; } ;

/* Variables and functions */
 int /*<<< orphan*/  Audio ; 
 int ENODEV ; 
 int /*<<< orphan*/  INDEX_AUDIO ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int FUNC0 (struct cx231xx*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct cx231xx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_cx231xx_hw_capture ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 struct cx231xx* FUNC7 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	struct cx231xx *dev = FUNC7(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	int ret = 0;

	FUNC3("opening device and trying to acquire exclusive lock\n");

	if (!dev) {
		FUNC1("BUG: cx231xx can't find device struct."
			       " Can't proceed with open\n");
		return -ENODEV;
	}

	/* Sets volume, mute, etc */
	dev->mute = 0;

	/* set alternate setting for audio interface */
	/* 1 - 48000 samples per sec */
	FUNC4(&dev->lock);
	if (dev->USE_ISO)
		ret = FUNC2(dev, INDEX_AUDIO, 1);
	else
		ret = FUNC2(dev, INDEX_AUDIO, 0);
	FUNC5(&dev->lock);
	if (ret < 0) {
		FUNC1("failed to set alternate setting !\n");

		return ret;
	}

	runtime->hw = snd_cx231xx_hw_capture;

	FUNC4(&dev->lock);
	/* inform hardware to start streaming */
	ret = FUNC0(dev, 1, Audio);

	dev->adev.users++;
	FUNC5(&dev->lock);

	FUNC6(runtime, SNDRV_PCM_HW_PARAM_PERIODS);
	dev->adev.capture_pcm_substream = substream;
	runtime->private_data = dev;

	return 0;
}