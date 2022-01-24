#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ieee80211_sta {int dummy; } ;
struct dma_pub {int dummy; } ;
struct brcms_hardware {struct dma_pub** di; } ;

/* Variables and functions */
 int NFIFO ; 
 int /*<<< orphan*/  FUNC0 (struct dma_pub*,void*,struct ieee80211_sta*) ; 

void FUNC1(struct brcms_hardware *hw,
			       struct ieee80211_sta *sta,
			       void (*dma_callback_fn))
{
	struct dma_pub *dmah;
	int i;
	for (i = 0; i < NFIFO; i++) {
		dmah = hw->di[i];
		if (dmah != NULL)
			FUNC0(dmah, dma_callback_fn, sta);
	}
}