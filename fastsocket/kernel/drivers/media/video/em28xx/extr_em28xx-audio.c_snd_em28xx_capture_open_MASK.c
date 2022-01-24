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
struct snd_pcm_runtime {struct em28xx* private_data; int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {scalar_t__ users; struct snd_pcm_substream* capture_pcm_substream; } ;
struct em28xx {int alt; int /*<<< orphan*/  lock; TYPE_1__ adev; int /*<<< orphan*/  udev; scalar_t__ mute; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_em28xx_hw_capture ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 struct em28xx* FUNC6 (struct snd_pcm_substream*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	struct em28xx *dev = FUNC6(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	int ret = 0;

	FUNC0("opening device and trying to acquire exclusive lock\n");

	if (!dev) {
		FUNC2("BUG: em28xx can't find device struct."
				" Can't proceed with open\n");
		return -ENODEV;
	}

	/* Sets volume, mute, etc */

	dev->mute = 0;
	FUNC3(&dev->lock);
	ret = FUNC1(dev);
	if (ret < 0)
		goto err;

	runtime->hw = snd_em28xx_hw_capture;
	if (dev->alt == 0 && dev->adev.users == 0) {
		int errCode;
		dev->alt = 7;
		FUNC0("changing alternate number to 7\n");
		errCode = FUNC7(dev->udev, 0, 7);
	}

	dev->adev.users++;
	FUNC4(&dev->lock);

	FUNC5(runtime, SNDRV_PCM_HW_PARAM_PERIODS);
	dev->adev.capture_pcm_substream = substream;
	runtime->private_data = dev;

	return 0;
err:
	FUNC4(&dev->lock);

	FUNC2("Error while configuring em28xx mixer\n");
	return ret;
}