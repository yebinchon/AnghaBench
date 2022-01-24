#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int BaseAddress; } ;
typedef  TYPE_1__ nsp32_hw_data ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int SDA ; 
 int /*<<< orphan*/  SERIAL_ROM_CTL ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(nsp32_hw_data *data, int bit)
{
	int base = data->BaseAddress;
	int tmp, ret;

	if (bit != SDA) {
		FUNC1(KERN_ERR, "return value is not appropriate");
		return 0;
	}


	tmp = FUNC0(base, SERIAL_ROM_CTL) & bit;

	if (tmp == 0) {
		ret = 0;
	} else {
		ret = 1;
	}

	FUNC2(10);

	return ret;
}