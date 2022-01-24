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
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC4(__u16 iobase)
{

	__u8 bTmp;

	bTmp = FUNC0(0x28);
	FUNC2(0x28, bTmp | 0x10);	//select ITMOFF
	bTmp = FUNC1(iobase, 0x35);
	FUNC3(iobase, 0x35, bTmp | 0x40);	// Driver ITMOFF
	FUNC3(iobase, 0x28, bTmp | 0x80);	// enable All interrupt
}