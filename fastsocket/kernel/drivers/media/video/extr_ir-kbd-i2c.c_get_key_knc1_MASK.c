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
typedef  unsigned char u32 ;
struct IR_i2c {int /*<<< orphan*/  c; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static int FUNC2(struct IR_i2c *ir, u32 *ir_key, u32 *ir_raw)
{
	unsigned char b;

	/* poll IR chip */
	if (1 != FUNC1(ir->c, &b, 1)) {
		FUNC0(1,"read error\n");
		return -EIO;
	}

	/* it seems that 0xFE indicates that a button is still hold
	   down, while 0xff indicates that no button is hold
	   down. 0xfe sequences are sometimes interrupted by 0xFF */

	FUNC0(2,"key %02x\n", b);

	if (b == 0xff)
		return 0;

	if (b == 0xfe)
		/* keep old data */
		return 1;

	*ir_key = b;
	*ir_raw = b;
	return 1;
}