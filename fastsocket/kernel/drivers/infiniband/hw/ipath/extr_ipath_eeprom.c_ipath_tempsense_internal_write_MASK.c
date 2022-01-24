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
typedef  int /*<<< orphan*/  u8 ;
struct ipath_devdata {int dummy; } ;
struct i2c_chain_desc {int temp_dev; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENXIO ; 
 int IPATH_NO_DEV ; 
 int READ_CMD ; 
 int WRITE_CMD ; 
 int FUNC0 (struct ipath_devdata*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipath_devdata*,char*,int /*<<< orphan*/ ) ; 
 struct i2c_chain_desc* FUNC3 (struct ipath_devdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipath_devdata*) ; 
 int FUNC5 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ipath_devdata *dd,
					  u8 regnum, u8 data)
{
	int ret = -ENOENT;
	struct i2c_chain_desc *icd;

	icd = FUNC3(dd);
	if (!icd)
		goto bail;

	if (icd->temp_dev == IPATH_NO_DEV) {
		/* tempsense only exists on new, real-I2C boards */
		ret = -ENXIO;
		goto bail;
	}
	if (FUNC0(dd, icd->temp_dev | WRITE_CMD)) {
		FUNC1("Failed tempsense startcmd\n");
		FUNC4(dd);
		ret = -ENXIO;
		goto bail;
	}
	ret = FUNC5(dd, regnum);
	if (ret) {
		FUNC4(dd);
		FUNC2(dd, "Failed to write tempsense command %02X\n",
			      regnum);
		ret = -ENXIO;
		goto bail;
	}
	ret = FUNC5(dd, data);
	FUNC4(dd);
	ret = FUNC0(dd, icd->temp_dev | READ_CMD);
	if (ret) {
		FUNC2(dd, "Failed tempsense data wrt to %02X\n",
			      regnum);
		ret = -ENXIO;
	}

bail:
	return ret;
}