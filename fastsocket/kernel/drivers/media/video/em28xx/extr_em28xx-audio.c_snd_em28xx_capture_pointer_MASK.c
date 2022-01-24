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
struct TYPE_2__ {int /*<<< orphan*/  slock; int /*<<< orphan*/  hwptr_done_capture; } ;
struct em28xx {TYPE_1__ adev; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 struct em28xx* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC3(struct snd_pcm_substream
						    *substream)
{
	unsigned long flags;
	struct em28xx *dev;
	snd_pcm_uframes_t hwptr_done;

	dev = FUNC0(substream);
	FUNC1(&dev->adev.slock, flags);
	hwptr_done = dev->adev.hwptr_done_capture;
	FUNC2(&dev->adev.slock, flags);

	return hwptr_done;
}