#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct TYPE_3__ {int /*<<< orphan*/  users; } ;
struct em28xx {int mute; int /*<<< orphan*/  lock; int /*<<< orphan*/  wq_trigger; int /*<<< orphan*/  stream_started; TYPE_1__ adev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * dma_area; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct em28xx* FUNC7 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream)
{
	struct em28xx *dev = FUNC7(substream);

	FUNC2("closing device\n");

	dev->mute = 1;
	FUNC4(&dev->lock);
	dev->adev.users--;
	if (FUNC0(&dev->stream_started) > 0) {
		FUNC1(&dev->stream_started, 0);
		FUNC6(&dev->wq_trigger);
	}

	FUNC3(dev);
	if (substream->runtime->dma_area) {
		FUNC2("freeing\n");
		FUNC8(substream->runtime->dma_area);
		substream->runtime->dma_area = NULL;
	}
	FUNC5(&dev->lock);

	return 0;
}