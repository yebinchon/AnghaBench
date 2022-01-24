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
struct v3020 {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write_bit ) (struct v3020*,unsigned char) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct v3020*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct v3020*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct v3020 *chip, unsigned char address,
			unsigned char data)
{
	int i;
	unsigned char tmp;

	tmp = address;
	for (i = 0; i < 4; i++) {
		chip->ops->write_bit(chip, (tmp & 1));
		tmp >>= 1;
		FUNC3(1);
	}

	/* Commands dont have data */
	if (!FUNC0(address)) {
		for (i = 0; i < 8; i++) {
			chip->ops->write_bit(chip, (data & 1));
			data >>= 1;
			FUNC3(1);
		}
	}
}