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
typedef  int u32 ;
struct IR_i2c {int /*<<< orphan*/  c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct IR_i2c *ir, u32 *ir_key, u32 *ir_raw)
{
	int flags, code;

	/* poll IR chip */
	flags = FUNC1(ir->c, 0x10);
	if (flags < 0) {
		FUNC0("read error\n");
		return 0;
	}
	/* key pressed ? */
	if (0 == (flags & 0x80))
		return 0;

	/* read actual key code */
	code = FUNC1(ir->c, 0x00);
	if (code < 0) {
		FUNC0("read error\n");
		return 0;
	}

	FUNC0("IR Key/Flags: (0x%02x/0x%02x)\n",
		   code & 0xff, flags & 0xff);

	*ir_key = code & 0xff;
	*ir_raw = code;
	return 1;
}