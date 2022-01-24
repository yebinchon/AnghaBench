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
typedef  unsigned int u32 ;
struct IR_i2c {unsigned int old; int /*<<< orphan*/  c; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned char*) ; 
 int EIO ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int FUNC3(struct IR_i2c *ir, u32 *ir_key, u32 *ir_raw,
			    int parity_offset, int marker, int code_modulo)
{
	unsigned char b[4];
	unsigned int start = 0,parity = 0,code = 0;

	/* poll IR chip */
	if (4 != FUNC1(ir->c, b, 4)) {
		FUNC2("read error\n");
		return -EIO;
	}

	for (start = 0; start < FUNC0(b); start++) {
		if (b[start] == marker) {
			code=b[(start+parity_offset + 1) % 4];
			parity=b[(start+parity_offset) % 4];
		}
	}

	/* Empty Request */
	if (parity == 0)
		return 0;

	/* Repeating... */
	if (ir->old == parity)
		return 0;

	ir->old = parity;

	/* drop special codes when a key is held down a long time for the grey controller
	   In this case, the second bit of the code is asserted */
	if (marker == 0xfe && (code & 0x40))
		return 0;

	code %= code_modulo;

	*ir_raw = code;
	*ir_key = code;

	FUNC2("Pinnacle PCTV key %02x\n", code);

	return 1;
}