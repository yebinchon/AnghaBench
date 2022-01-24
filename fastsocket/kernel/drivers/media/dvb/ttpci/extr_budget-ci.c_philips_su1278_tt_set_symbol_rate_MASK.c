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
struct dvb_frontend {int dummy; } ;
typedef  int ratio ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvb_frontend*,int,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend *fe, u32 srate, u32 ratio)
{
	FUNC0(fe, 0x0e, 0x44);
	if (srate >= 10000000) {
		FUNC0(fe, 0x13, 0x97);
		FUNC0(fe, 0x14, 0x95);
		FUNC0(fe, 0x15, 0xc9);
		FUNC0(fe, 0x17, 0x8c);
		FUNC0(fe, 0x1a, 0xfe);
		FUNC0(fe, 0x1c, 0x7f);
		FUNC0(fe, 0x2d, 0x09);
	} else {
		FUNC0(fe, 0x13, 0x99);
		FUNC0(fe, 0x14, 0x8d);
		FUNC0(fe, 0x15, 0xce);
		FUNC0(fe, 0x17, 0x43);
		FUNC0(fe, 0x1a, 0x1d);
		FUNC0(fe, 0x1c, 0x12);
		FUNC0(fe, 0x2d, 0x05);
	}
	FUNC0(fe, 0x0e, 0x23);
	FUNC0(fe, 0x0f, 0x94);
	FUNC0(fe, 0x10, 0x39);
	FUNC0(fe, 0x15, 0xc9);

	FUNC0(fe, 0x1f, (ratio >> 16) & 0xff);
	FUNC0(fe, 0x20, (ratio >> 8) & 0xff);
	FUNC0(fe, 0x21, (ratio) & 0xf0);

	return 0;
}