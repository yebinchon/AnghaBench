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
typedef  int __u8 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int Rd_Valid ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int RxBit ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static __u8 FUNC7(__u16 iobase, __u8 addr, __u8 index)
{
	__u8 data = 0, bTmp, data_bit;
	int i;

	bTmp = addr | (index << 1) | 0;
	FUNC1(iobase, 0, 0);
	FUNC4(2);
	FUNC0(iobase, 1);
	FUNC6(1);
	FUNC5(iobase, bTmp);
	FUNC3(1);
	FUNC1(iobase, 0, 0);
	FUNC4(2);
	for (i = 0; i < 10; i++) {
		FUNC0(iobase, 1);
		FUNC4(1);
		FUNC0(iobase, 0);
		FUNC4(1);
		FUNC1(iobase, 0, 1);
		FUNC4(1);
		bTmp = FUNC2(iobase, 0x34);
		if (!(bTmp & Rd_Valid))
			break;
	}
	if (!(bTmp & Rd_Valid)) {
		for (i = 0; i < 8; i++) {
			FUNC0(iobase, 1);
			FUNC4(1);
			FUNC0(iobase, 0);
			bTmp = FUNC2(iobase, 0x34);
			data_bit = 1 << i;
			if (bTmp & RxBit)
				data |= data_bit;
			else
				data &= ~data_bit;
			FUNC4(2);
		}
	} else {
		for (i = 0; i < 2; i++) {
			FUNC0(iobase, 1);
			FUNC4(1);
			FUNC0(iobase, 0);
			FUNC4(2);
		}
		bTmp = FUNC2(iobase, 0x34);
	}
	for (i = 0; i < 1; i++) {
		FUNC0(iobase, 1);
		FUNC4(1);
		FUNC0(iobase, 0);
		FUNC4(2);
	}
	FUNC1(iobase, 0, 0);
	FUNC4(1);
	for (i = 0; i < 3; i++) {
		FUNC0(iobase, 1);
		FUNC4(1);
		FUNC0(iobase, 0);
		FUNC4(2);
	}
	return data;
}