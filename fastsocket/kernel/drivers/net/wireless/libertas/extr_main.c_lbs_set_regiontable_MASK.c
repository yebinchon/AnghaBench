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
typedef  void* u8 ;
struct lbs_private {TYPE_1__* region_channel; } ;
struct chan_freq_power {int dummy; } ;
struct TYPE_2__ {int nrcfp; int valid; void* band; void* region; struct chan_freq_power* CFP; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBS_DEB_MAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*) ; 
 struct chan_freq_power* FUNC3 (void*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct lbs_private *priv, u8 region, u8 band)
{
	int ret = 0;
	int i = 0;

	struct chan_freq_power *cfp;
	int cfp_no;

	FUNC0(LBS_DEB_MAIN);

	FUNC4(priv->region_channel, 0, sizeof(priv->region_channel));

	cfp = FUNC3(region, &cfp_no);
	if (cfp != NULL) {
		priv->region_channel[i].nrcfp = cfp_no;
		priv->region_channel[i].CFP = cfp;
	} else {
		FUNC2("wrong region code %#x in band B/G\n",
		       region);
		ret = -1;
		goto out;
	}
	priv->region_channel[i].valid = 1;
	priv->region_channel[i].region = region;
	priv->region_channel[i].band = band;
	i++;
out:
	FUNC1(LBS_DEB_MAIN, "ret %d", ret);
	return ret;
}