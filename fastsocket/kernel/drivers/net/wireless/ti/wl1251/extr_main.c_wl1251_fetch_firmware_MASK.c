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
struct wl1251 {int fw_len; int /*<<< orphan*/  fw; TYPE_1__* hw; } ;
struct firmware {int size; int /*<<< orphan*/  data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int EILSEQ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  WL1251_FW_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct firmware const*) ; 
 int FUNC2 (struct firmware const**,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct device* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int FUNC6(struct wl1251 *wl)
{
	const struct firmware *fw;
	struct device *dev = FUNC4(wl->hw->wiphy);
	int ret;

	ret = FUNC2(&fw, WL1251_FW_NAME, dev);

	if (ret < 0) {
		FUNC5("could not get firmware: %d", ret);
		return ret;
	}

	if (fw->size % 4) {
		FUNC5("firmware size is not multiple of 32 bits: %zu",
			     fw->size);
		ret = -EILSEQ;
		goto out;
	}

	wl->fw_len = fw->size;
	wl->fw = FUNC3(wl->fw_len);

	if (!wl->fw) {
		FUNC5("could not allocate memory for the firmware");
		ret = -ENOMEM;
		goto out;
	}

	FUNC0(wl->fw, fw->data, wl->fw_len);

	ret = 0;

out:
	FUNC1(fw);

	return ret;
}