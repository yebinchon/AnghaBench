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
struct pattern {int* seq; int /*<<< orphan*/ ** siz; int /*<<< orphan*/ ** data; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct dsp_tone {int index; TYPE_1__ tl; int /*<<< orphan*/  tone; scalar_t__ pattern; } ;
struct dsp {struct dsp_tone tone; } ;

/* Variables and functions */
 int /*<<< orphan*/ * DATA_S ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct dsp*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 

void
FUNC3(void *arg)
{
	struct dsp *dsp = arg;
	struct dsp_tone *tone = &dsp->tone;
	struct pattern *pat = (struct pattern *)tone->pattern;
	int index = tone->index;

	if (!tone->tone)
		return;

	index++;
	if (!pat->seq[index])
		index = 0;
	tone->index = index;

	/* set next tone */
	if (pat->data[index] == DATA_S)
		FUNC1(dsp, NULL, 0);
	else
		FUNC1(dsp, pat->data[index], *(pat->siz[index]));
	/* set timer */
	FUNC2(&tone->tl);
	tone->tl.expires = jiffies + (pat->seq[index] * HZ) / 8000;
	FUNC0(&tone->tl);
}