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
typedef  int u8 ;
struct parsed_region_chan_11d {int nr_chan; struct chan_power_11d* chanpwr; } ;
struct chan_power_11d {int chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBS_DEB_11D ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 

__attribute__((used)) static u8 FUNC2(u8 chan,
			  struct parsed_region_chan_11d * parsed_region_chan)
{
	struct chan_power_11d *chanpwr = parsed_region_chan->chanpwr;
	u8 nr_chan = parsed_region_chan->nr_chan;
	u8 i = 0;

	FUNC1(LBS_DEB_11D, "parsed_region_chan", (char *)chanpwr,
		sizeof(struct chan_power_11d) * nr_chan);

	for (i = 0; i < nr_chan; i++) {
		if (chan == chanpwr[i].chan) {
			FUNC0("found chan %d\n", chan);
			return 1;
		}
	}

	FUNC0("chan %d not found\n", chan);
	return 0;
}