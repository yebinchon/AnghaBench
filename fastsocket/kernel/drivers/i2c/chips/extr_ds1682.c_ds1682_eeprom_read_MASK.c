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
struct kobject {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct bin_attribute {int dummy; } ;
typedef  size_t ssize_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ DS1682_EEPROM_SIZE ; 
 scalar_t__ DS1682_REG_EEPROM ; 
 size_t EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,scalar_t__,size_t) ; 
 int FUNC1 (struct i2c_client*,scalar_t__,size_t,char*) ; 
 struct i2c_client* FUNC2 (struct kobject*) ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *kobj, struct bin_attribute *attr,
				  char *buf, loff_t off, size_t count)
{
	struct i2c_client *client = FUNC2(kobj);
	int rc;

	FUNC0(&client->dev, "ds1682_eeprom_read(p=%p, off=%lli, c=%zi)\n",
		buf, off, count);

	if (off >= DS1682_EEPROM_SIZE)
		return 0;

	if (off + count > DS1682_EEPROM_SIZE)
		count = DS1682_EEPROM_SIZE - off;

	rc = FUNC1(client, DS1682_REG_EEPROM + off,
					   count, buf);
	if (rc < 0)
		return -EIO;

	return count;
}