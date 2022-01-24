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
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(__u16 iobase, __u8 data)
{
	__u8 bData = data;
//      __u8 btmp;
	int i;

	FUNC1(iobase, 0, 1);

	FUNC3(2);
	FUNC0(iobase, 1);
	FUNC3(1);

	for (i = 0; i < 8; i++) {	//LDN

		if ((bData >> i) & 0x01) {
			FUNC1(iobase, 0, 1);	//bit data = 1;
		} else {
			FUNC1(iobase, 0, 0);	//bit data = 1;
		}
		FUNC3(2);
		FUNC2(1);
		FUNC0(iobase, 1);	//clk hi
		FUNC3(1);
	}
}