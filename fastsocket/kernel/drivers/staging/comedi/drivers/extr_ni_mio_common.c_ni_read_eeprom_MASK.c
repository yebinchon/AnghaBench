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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int PROMOUT ; 
 int /*<<< orphan*/  Serial_Command ; 
 int /*<<< orphan*/  XXX_Status ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev, int addr)
{
	int bit;
	int bitstring;

	bitstring = 0x0300 | ((addr & 0x100) << 3) | (addr & 0xff);
	FUNC1(0x04, Serial_Command);
	for (bit = 0x8000; bit; bit >>= 1) {
		FUNC1(0x04 | ((bit & bitstring) ? 0x02 : 0),
			  Serial_Command);
		FUNC1(0x05 | ((bit & bitstring) ? 0x02 : 0),
			  Serial_Command);
	}
	bitstring = 0;
	for (bit = 0x80; bit; bit >>= 1) {
		FUNC1(0x04, Serial_Command);
		FUNC1(0x05, Serial_Command);
		bitstring |= ((FUNC0(XXX_Status) & PROMOUT) ? bit : 0);
	}
	FUNC1(0x00, Serial_Command);

	return bitstring;
}