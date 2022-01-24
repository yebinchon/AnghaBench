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
typedef  scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ start; scalar_t__ end; } ;
struct lbtf_private {scalar_t__ regioncode; TYPE_2__* channels; TYPE_1__ range; } ;
struct channel_range {scalar_t__ regdomain; } ;
struct TYPE_4__ {scalar_t__ flags; } ;

/* Variables and functions */
 int FUNC0 (struct channel_range*) ; 
 size_t FUNC1 (scalar_t__) ; 
 struct channel_range* channel_ranges ; 

__attribute__((used)) static void FUNC2(struct lbtf_private *priv)
{
	const struct channel_range *range = channel_ranges;
	u8 ch;
	int i;

	for (i = 0; i < FUNC0(channel_ranges); i++)
		if (channel_ranges[i].regdomain == priv->regioncode) {
			range = &channel_ranges[i];
			break;
		}

	for (ch = priv->range.start; ch < priv->range.end; ch++)
		priv->channels[FUNC1(ch)].flags = 0;
}