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
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  size_t ssize_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  EC_BAT_EEPROM ; 
 scalar_t__ EEPROM_SIZE ; 
 scalar_t__ EEPROM_START ; 
 size_t EIO ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct file *filp, struct kobject *kobj,
		struct bin_attribute *attr, char *buf, loff_t off, size_t count)
{
	uint8_t ec_byte;
	int ret;
	int i;

	if (off >= EEPROM_SIZE)
		return 0;
	if (off + count > EEPROM_SIZE)
		count = EEPROM_SIZE - off;

	for (i = 0; i < count; i++) {
		ec_byte = EEPROM_START + off + i;
		ret = FUNC0(EC_BAT_EEPROM, &ec_byte, 1, &buf[i], 1);
		if (ret) {
			FUNC1("olpc-battery: "
			       "EC_BAT_EEPROM cmd @ 0x%x failed - %d!\n",
			       ec_byte, ret);
			return -EIO;
		}
	}

	return count;
}