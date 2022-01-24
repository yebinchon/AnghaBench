#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {int dummy; } ;
struct saa7134_dev {int ctl_mute; } ;
struct TYPE_3__ {scalar_t__ mute_was_on; struct saa7134_dev* dev; } ;
typedef  TYPE_1__ snd_card_saa7134_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct saa7134_dev*) ; 
 TYPE_1__* FUNC1 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream * substream)
{
	snd_card_saa7134_t *saa7134 = FUNC1(substream);
	struct saa7134_dev *dev = saa7134->dev;

	if (saa7134->mute_was_on) {
		dev->ctl_mute = 1;
		FUNC0(dev);
	}
	return 0;
}