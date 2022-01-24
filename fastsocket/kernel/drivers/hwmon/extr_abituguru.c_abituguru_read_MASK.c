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
typedef  scalar_t__ u8 ;
struct abituguru_data {scalar_t__ addr; } ;

/* Variables and functions */
 scalar_t__ ABIT_UGURU_CMD ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int) ; 
 int /*<<< orphan*/  ABIT_UGURU_STATUS_READ ; 
 int /*<<< orphan*/  FUNC1 (struct abituguru_data*) ; 
 int FUNC2 (struct abituguru_data*,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC3 (struct abituguru_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct abituguru_data *data,
	u8 bank_addr, u8 sensor_addr, u8 *buf, int count, int retries)
{
	int i;

	/* Send the address */
	i = FUNC2(data, bank_addr, sensor_addr, retries);
	if (i)
		return i;

	/* And read the data */
	for (i = 0; i < count; i++) {
		if (FUNC3(data, ABIT_UGURU_STATUS_READ)) {
			FUNC0(retries ? 1 : 3,
				"timeout exceeded waiting for "
				"read state (bank: %d, sensor: %d)\n",
				(int)bank_addr, (int)sensor_addr);
			break;
		}
		buf[i] = FUNC4(data->addr + ABIT_UGURU_CMD);
	}

	/* Last put the chip back in ready state */
	FUNC1(data);

	return i;
}