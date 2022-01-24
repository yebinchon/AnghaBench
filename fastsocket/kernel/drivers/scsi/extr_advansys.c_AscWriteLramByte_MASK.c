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
typedef  int ushort ;
typedef  scalar_t__ uchar ;
typedef  int /*<<< orphan*/  PortAddr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(PortAddr iop_base, ushort addr, uchar byte_val)
{
	ushort word_data;

	if (FUNC2(addr)) {
		addr--;
		word_data = FUNC0(iop_base, addr);
		word_data &= 0x00FF;
		word_data |= (((ushort)byte_val << 8) & 0xFF00);
	} else {
		word_data = FUNC0(iop_base, addr);
		word_data &= 0xFF00;
		word_data |= ((ushort)byte_val & 0x00FF);
	}
	FUNC1(iop_base, addr, word_data);
}