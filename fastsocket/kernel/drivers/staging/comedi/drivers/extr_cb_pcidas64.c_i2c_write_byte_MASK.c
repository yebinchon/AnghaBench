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
typedef  int uint8_t ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev, uint8_t byte)
{
	uint8_t bit;
	unsigned int num_bits = 8;

	FUNC0("writing to i2c byte 0x%x\n", byte);

	for (bit = 1 << (num_bits - 1); bit; bit >>= 1) {
		FUNC1(dev, 0);
		if ((byte & bit))
			FUNC2(dev, 1);
		else
			FUNC2(dev, 0);
		FUNC1(dev, 1);
	}
}