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
typedef  size_t u8 ;
struct region_channel {size_t nrcfp; int /*<<< orphan*/  region; int /*<<< orphan*/  band; struct chan_freq_power* CFP; } ;
struct parsed_region_chan_11d {size_t nr_chan; TYPE_1__* chanpwr; int /*<<< orphan*/  band; int /*<<< orphan*/  region; int /*<<< orphan*/  countrycode; } ;
struct chan_freq_power {int /*<<< orphan*/  maxtxpower; int /*<<< orphan*/  channel; } ;
struct TYPE_2__ {int /*<<< orphan*/  pwr; int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  COUNTRY_CODE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct region_channel *region_chan,
					  struct parsed_region_chan_11d *
					  parsed_region_chan)
{
	u8 i;
	struct chan_freq_power *cfp;

	if (region_chan == NULL) {
		FUNC1("region_chan is NULL\n");
		return;
	}

	cfp = region_chan->CFP;
	if (cfp == NULL) {
		FUNC1("cfp is NULL \n");
		return;
	}

	parsed_region_chan->band = region_chan->band;
	parsed_region_chan->region = region_chan->region;
	FUNC2(parsed_region_chan->countrycode,
	       FUNC0(region_chan->region), COUNTRY_CODE_LEN);

	FUNC1("region 0x%x, band %d\n", parsed_region_chan->region,
	       parsed_region_chan->band);

	for (i = 0; i < region_chan->nrcfp; i++, cfp++) {
		parsed_region_chan->chanpwr[i].chan = cfp->channel;
		parsed_region_chan->chanpwr[i].pwr = cfp->maxtxpower;
		FUNC1("chan %d, pwr %d\n",
		       parsed_region_chan->chanpwr[i].chan,
		       parsed_region_chan->chanpwr[i].pwr);
	}
	parsed_region_chan->nr_chan = region_chan->nrcfp;

	FUNC1("nrchan %d\n", parsed_region_chan->nr_chan);

	return;
}