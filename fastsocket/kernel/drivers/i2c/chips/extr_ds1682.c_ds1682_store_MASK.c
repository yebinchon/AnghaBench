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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct sensor_device_attribute_2 {int nr; int /*<<< orphan*/  index; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char**,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC6 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *sattr = FUNC7(attr);
	struct i2c_client *client = FUNC6(dev);
	char *endp;
	u64 val;
	__le32 val_le;
	int rc;

	FUNC1(dev, "ds1682_store() called on %s\n", attr->attr.name);

	/* Decode input */
	val = FUNC5(buf, &endp, 0);
	if (buf == endp) {
		FUNC1(dev, "input string not a number\n");
		return -EINVAL;
	}

	/* Special case: the 32 bit regs are time values with 1/4s
	 * resolution, scale input down to quarter-seconds */
	if (sattr->nr == 4)
		FUNC3(val, 250);

	/* write out the value */
	val_le = FUNC0(val);
	rc = FUNC4(client, sattr->index, sattr->nr,
					    (u8 *) & val_le);
	if (rc < 0) {
		FUNC2(dev, "register write failed; reg=0x%x, size=%i\n",
			sattr->index, sattr->nr);
		return -EIO;
	}

	return count;
}