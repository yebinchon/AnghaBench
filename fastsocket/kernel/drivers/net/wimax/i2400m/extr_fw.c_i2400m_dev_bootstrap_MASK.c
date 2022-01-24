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
struct i2400m_bcf_hdr {int dummy; } ;
struct i2400m {char** bus_fw_names; char const* fw_name; } ;
struct firmware {int /*<<< orphan*/  size; scalar_t__ data; } ;
struct device {int dummy; } ;
typedef  enum i2400m_bri { ____Placeholder_i2400m_bri } i2400m_bri ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct i2400m*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct device* FUNC3 (struct i2400m*) ; 
 int FUNC4 (struct i2400m*,struct i2400m_bcf_hdr const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct i2400m*,struct i2400m_bcf_hdr const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct firmware const*) ; 
 int FUNC7 (struct firmware const**,char const*,struct device*) ; 

int FUNC8(struct i2400m *i2400m, enum i2400m_bri flags)
{
	int ret = 0, itr = 0;
	struct device *dev = FUNC3(i2400m);
	const struct firmware *fw;
	const struct i2400m_bcf_hdr *bcf;	/* Firmware data */
	const char *fw_name;

	FUNC1(5, dev, "(i2400m %p)\n", i2400m);

	/* Load firmware files to memory. */
	itr = 0;
	while(1) {
		fw_name = i2400m->bus_fw_names[itr];
		if (fw_name == NULL) {
			FUNC2(dev, "Could not find a usable firmware image\n");
			ret = -ENOENT;
			goto error_no_fw;
		}
		ret = FUNC7(&fw, fw_name, dev);
		if (ret == 0)
			break;		/* got it */
		if (ret < 0)
			FUNC2(dev, "fw %s: cannot load file: %d\n",
				fw_name, ret);
		itr++;
	}

	bcf = (void *) fw->data;
	i2400m->fw_name = fw_name;
	ret = FUNC4(i2400m, bcf, fw->size);
	if (ret < 0)
		goto error_fw_bad;
	ret = FUNC5(i2400m, bcf, fw->size, flags);
error_fw_bad:
	FUNC6(fw);
error_no_fw:
	FUNC0(5, dev, "(i2400m %p) = %d\n", i2400m, ret);
	return ret;
}