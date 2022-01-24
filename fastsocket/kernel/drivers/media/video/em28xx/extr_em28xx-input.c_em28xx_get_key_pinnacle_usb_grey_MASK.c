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
 int FUNC0 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

int FUNC2(struct IR_i2c *ir, u32 *ir_key,
				     u32 *ir_raw)
{
	unsigned char buf[3];

	/* poll IR chip */

	if (3 != FUNC0(ir->c, buf, 3)) {
		FUNC1("read error\n");
		return -EIO;
	}

	FUNC1("key %02x\n", buf[2]&0x3f);
	if (buf[0] != 0x00)
		return 0;

	*ir_key = buf[2]&0x3f;
	*ir_raw = buf[2]&0x3f;

	return 1;
}