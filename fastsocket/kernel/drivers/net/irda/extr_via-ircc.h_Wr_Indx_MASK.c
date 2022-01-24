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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(__u16 iobase, __u8 addr, __u8 index, __u8 data)
{
	int i;
	__u8 bTmp;

	FUNC1(iobase, 0, 0);
	FUNC4(2);
	FUNC0(iobase, 1);
	FUNC4(1);
	bTmp = addr | (index << 1) | 1;
	FUNC3(iobase, bTmp);
	FUNC3(iobase, data);
	for (i = 0; i < 2; i++) {
		FUNC1(iobase, 0, 0);
		FUNC2(2);
		FUNC0(iobase, 1);
		FUNC2(1);
	}
	FUNC0(iobase, 0);
}