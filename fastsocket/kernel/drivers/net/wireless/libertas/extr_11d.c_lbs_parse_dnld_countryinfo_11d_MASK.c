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
struct parsed_region_chan_11d {int dummy; } ;
struct lbs_private {int /*<<< orphan*/  domainreg; int /*<<< orphan*/  parsed_region_chan; scalar_t__ enable11d; } ;
struct lbs_802_11d_domain_reg {int dummy; } ;
struct bss_descriptor {int /*<<< orphan*/  countryinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBS_DEB_11D ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct lbs_private*) ; 

int FUNC7(struct lbs_private *priv,
                                        struct bss_descriptor * bss)
{
	int ret;

	FUNC2(LBS_DEB_11D);
	if (priv->enable11d) {
		FUNC4(&priv->parsed_region_chan, 0,
		       sizeof(struct parsed_region_chan_11d));
		ret = FUNC5(&bss->countryinfo, 0,
					       &priv->parsed_region_chan);

		if (ret == -1) {
			FUNC1("error parsing domain_info from AP\n");
			goto done;
		}

		FUNC4(&priv->domainreg, 0,
		       sizeof(struct lbs_802_11d_domain_reg));
		FUNC0(&priv->parsed_region_chan,
				      &priv->domainreg);

		ret = FUNC6(priv);

		if (ret) {
			FUNC1("error setting domain info\n");
			goto done;
		}
	}
	ret = 0;

done:
	FUNC3(LBS_DEB_11D, "ret %d", ret);
	return ret;
}