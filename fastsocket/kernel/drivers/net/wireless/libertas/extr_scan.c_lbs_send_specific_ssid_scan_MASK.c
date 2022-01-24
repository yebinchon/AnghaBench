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
typedef  scalar_t__ uint8_t ;
struct lbs_private {scalar_t__ surpriseremoved; scalar_t__ scan_ssid_len; int /*<<< orphan*/  scan_ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LBS_DEB_SCAN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lbs_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  ssid_buf ; 

int FUNC6(struct lbs_private *priv, uint8_t *ssid,
				uint8_t ssid_len)
{
	FUNC0(ssid_buf);
	int ret = 0;

	FUNC1(LBS_DEB_SCAN, "SSID '%s'\n",
			   FUNC5(ssid_buf, ssid, ssid_len));

	if (!ssid_len)
		goto out;

	FUNC4(priv->scan_ssid, ssid, ssid_len);
	priv->scan_ssid_len = ssid_len;

	FUNC3(priv, 1);
	if (priv->surpriseremoved) {
		ret = -1;
		goto out;
	}

out:
	FUNC2(LBS_DEB_SCAN, "ret %d", ret);
	return ret;
}