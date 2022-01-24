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
struct sym_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sym_device*,unsigned short*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sym_device*,int,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sym_device*,unsigned char*) ; 

__attribute__((used)) static int FUNC3(struct sym_device *np, unsigned short *data,
		int len, unsigned char *gpreg)
{
	int x;

	for (x = 0; x < len; x++)  {
		unsigned char read_bit;
		/* output read command and address */
		FUNC1(np, 0x180 | x, &read_bit, gpreg);
		if (read_bit & 0x01)
			return 1; /* Bad */
		FUNC0(np, &data[x], gpreg);
		FUNC2(np, gpreg);
	}

	return 0;
}