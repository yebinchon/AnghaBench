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
typedef  int u32 ;
struct ieee80211_channel {int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32
FUNC2(struct ieee80211_channel *channel)
{
	u32 athchan;

	athchan = (FUNC0(
			(FUNC1(
				channel->center_freq) - 24) / 2, 5)
				<< 1) | (1 << 6) | 0x1;
	return athchan;
}