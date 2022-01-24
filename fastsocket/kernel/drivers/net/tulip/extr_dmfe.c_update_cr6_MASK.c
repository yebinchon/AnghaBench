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

/* Variables and functions */
 scalar_t__ DCR6 ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(u32 cr6_data, unsigned long ioaddr)
{
	u32 cr6_tmp;

	cr6_tmp = cr6_data & ~0x2002;           /* stop Tx/Rx */
	FUNC0(cr6_tmp, ioaddr + DCR6);
	FUNC1(5);
	FUNC0(cr6_data, ioaddr + DCR6);
	FUNC1(5);
}