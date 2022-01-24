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
typedef  int u8 ;
typedef  int u32 ;
struct dvb_frontend {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvb_frontend*,int,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend *fe,
	u32 srate, u32 ratio)
{
	u8 aclk = 0;
	u8 bclk = 0;

	if (srate < 1500000) {
		aclk = 0xb7;
		bclk = 0x47;
	} else if (srate < 3000000) {
		aclk = 0xb7;
		bclk = 0x4b;
	} else if (srate < 7000000) {
		aclk = 0xb7;
		bclk = 0x4f;
	} else if (srate < 14000000) {
		aclk = 0xb7;
		bclk = 0x53;
	} else if (srate < 30000000) {
		aclk = 0xb6;
		bclk = 0x53;
	} else if (srate < 45000000) {
		aclk = 0xb4;
		bclk = 0x51;
	}

	FUNC0(fe, 0x13, aclk);
	FUNC0(fe, 0x14, bclk);
	FUNC0(fe, 0x1f, (ratio >> 16) & 0xff);
	FUNC0(fe, 0x20, (ratio >>  8) & 0xff);
	FUNC0(fe, 0x21, ratio & 0xf0);

	return 0;
}