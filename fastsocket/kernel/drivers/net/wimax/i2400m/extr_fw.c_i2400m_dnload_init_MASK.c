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
typedef  int u32 ;
struct i2400m_bcf_hdr {int /*<<< orphan*/  module_id; } ;
struct i2400m {scalar_t__ sboot; int /*<<< orphan*/  fw_name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int I2400M_BCF_MOD_ID_POKES ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 struct device* FUNC1 (struct i2400m*) ; 
 int FUNC2 (struct i2400m*) ; 
 int FUNC3 (struct i2400m*,struct i2400m_bcf_hdr const*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC5(struct i2400m *i2400m, const struct i2400m_bcf_hdr *bcf)
{
	int result;
	struct device *dev = FUNC1(i2400m);
	u32 module_id = FUNC4(bcf->module_id);

	if (i2400m->sboot == 0
	    && (module_id & I2400M_BCF_MOD_ID_POKES) == 0) {
		/* non-signed boot process without pokes */
		result = FUNC2(i2400m);
		if (result == -ERESTARTSYS)
			return result;
		if (result < 0)
			FUNC0(dev, "fw %s: non-signed download "
				"initialization failed: %d\n",
				i2400m->fw_name, result);
	} else if (i2400m->sboot == 0
		 && (module_id & I2400M_BCF_MOD_ID_POKES)) {
		/* non-signed boot process with pokes, nothing to do */
		result = 0;
	} else {		 /* signed boot process */
		result = FUNC3(i2400m, bcf);
		if (result == -ERESTARTSYS)
			return result;
		if (result < 0)
			FUNC0(dev, "fw %s: signed boot download "
				"initialization failed: %d\n",
				i2400m->fw_name, result);
	}
	return result;
}