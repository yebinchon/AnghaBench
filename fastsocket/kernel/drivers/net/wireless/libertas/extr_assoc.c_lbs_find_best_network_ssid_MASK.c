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
struct lbs_private {scalar_t__ surpriseremoved; scalar_t__ scan_ssid_len; } ;
struct bss_descriptor {scalar_t__ ssid_len; scalar_t__ mode; int /*<<< orphan*/  ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  IW_ESSID_MAX_SIZE ; 
 int /*<<< orphan*/  LBS_DEB_SCAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct bss_descriptor* FUNC2 (struct lbs_private*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct lbs_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct lbs_private *priv,
	uint8_t *out_ssid, uint8_t *out_ssid_len, uint8_t preferred_mode,
	uint8_t *out_mode)
{
	int ret = -1;
	struct bss_descriptor *found;

	FUNC0(LBS_DEB_SCAN);

	priv->scan_ssid_len = 0;
	FUNC3(priv, 1);
	if (priv->surpriseremoved)
		goto out;

	found = FUNC2(priv, preferred_mode);
	if (found && (found->ssid_len > 0)) {
		FUNC4(out_ssid, &found->ssid, IW_ESSID_MAX_SIZE);
		*out_ssid_len = found->ssid_len;
		*out_mode = found->mode;
		ret = 0;
	}

out:
	FUNC1(LBS_DEB_SCAN, "ret %d", ret);
	return ret;
}