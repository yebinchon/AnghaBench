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
struct orinoco_private {struct device* dev; } ;
struct fw_info {int /*<<< orphan*/  sta_fw; int /*<<< orphan*/  pri_fw; } ;
struct firmware {scalar_t__ size; scalar_t__ data; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 struct firmware* FUNC1 (struct orinoco_private*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct firmware const*) ; 
 scalar_t__ FUNC3 (struct firmware const**,int /*<<< orphan*/ ,struct device*) ; 
 int FUNC4 (struct orinoco_private*,struct fw_info const*,scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC5(struct orinoco_private *priv,
		   const struct fw_info *fw)
{
	struct device *dev = priv->dev;
	int ret;
	const struct firmware *fw_entry;

	if (!FUNC1(priv, true)) {
		if (FUNC3(&fw_entry, fw->pri_fw, priv->dev) != 0) {
			FUNC0(dev, "Cannot find firmware: %s\n", fw->pri_fw);
			return -ENOENT;
		}
	} else
		fw_entry = FUNC1(priv, true);

	/* Load primary firmware */
	ret = FUNC4(priv, fw, fw_entry->data,
			      fw_entry->data + fw_entry->size, 0);

	if (!FUNC1(priv, true))
		FUNC2(fw_entry);
	if (ret) {
		FUNC0(dev, "Primary firmware download failed\n");
		return ret;
	}

	if (!FUNC1(priv, false)) {
		if (FUNC3(&fw_entry, fw->sta_fw, priv->dev) != 0) {
			FUNC0(dev, "Cannot find firmware: %s\n", fw->sta_fw);
			return -ENOENT;
		}
	} else
		fw_entry = FUNC1(priv, false);

	/* Load secondary firmware */
	ret = FUNC4(priv, fw, fw_entry->data,
			      fw_entry->data + fw_entry->size, 1);
	if (!FUNC1(priv, false))
		FUNC2(fw_entry);
	if (ret)
		FUNC0(dev, "Secondary firmware download failed\n");

	return ret;
}