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
struct region_channel {int /*<<< orphan*/  band; int /*<<< orphan*/  CFP; int /*<<< orphan*/  valid; } ;
struct parsed_region_chan_11d {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  band; } ;
struct lbs_private {int /*<<< orphan*/  domainreg; int /*<<< orphan*/  parsed_region_chan; TYPE_1__ curbssparams; struct region_channel* region_channel; scalar_t__ enable11d; } ;
struct lbs_802_11d_domain_reg {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct region_channel*) ; 
 int /*<<< orphan*/  LBS_DEB_11D ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct region_channel*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct lbs_private*) ; 

int FUNC8(struct lbs_private *priv)
{
	int ret;
	struct region_channel *region_chan;
	u8 j;

	FUNC3(LBS_DEB_11D);
	FUNC2("curbssparams.band %d\n", priv->curbssparams.band);

	if (priv->enable11d) {
		/* update parsed_region_chan_11; dnld domaininf to FW */

		for (j = 0; j < FUNC0(priv->region_channel); j++) {
			region_chan = &priv->region_channel[j];

			FUNC2("%d region_chan->band %d\n", j,
			       region_chan->band);

			if (!region_chan || !region_chan->valid
			    || !region_chan->CFP)
				continue;
			if (region_chan->band != priv->curbssparams.band)
				continue;
			break;
		}

		if (j >= FUNC0(priv->region_channel)) {
			FUNC2("region_chan not found, band %d\n",
			       priv->curbssparams.band);
			ret = -1;
			goto done;
		}

		FUNC6(&priv->parsed_region_chan, 0,
		       sizeof(struct parsed_region_chan_11d));
		FUNC5(region_chan,
						     &priv->
						     parsed_region_chan);

		FUNC6(&priv->domainreg, 0,
		       sizeof(struct lbs_802_11d_domain_reg));
		FUNC1(&priv->parsed_region_chan,
					 &priv->domainreg);

		ret = FUNC7(priv);

		if (ret) {
			FUNC2("error setting domain info\n");
			goto done;
		}

	}
	ret = 0;

done:
	FUNC4(LBS_DEB_11D, "ret %d", ret);
	return ret;
}