#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_8__ {int serial_signals; int port_num; TYPE_1__** port_array; } ;
struct TYPE_7__ {int ctrlreg_value; } ;
typedef  TYPE_2__ SLMP_INFO ;

/* Variables and functions */
 unsigned char BIT0 ; 
 int BIT1 ; 
 int /*<<< orphan*/  CTL ; 
 int SerialSignal_DTR ; 
 int SerialSignal_RTS ; 
 unsigned char FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void FUNC3(SLMP_INFO *info)
{
	unsigned char RegValue;
	u16 EnableBit;

	RegValue = FUNC0(info, CTL);
	if (info->serial_signals & SerialSignal_RTS)
		RegValue &= ~BIT0;
	else
		RegValue |= BIT0;
	FUNC2(info, CTL, RegValue);

	// Port 0..3 DTR is ctrl reg <1,3,5,7>
	EnableBit = BIT1 << (info->port_num*2);
	if (info->serial_signals & SerialSignal_DTR)
		info->port_array[0]->ctrlreg_value &= ~EnableBit;
	else
		info->port_array[0]->ctrlreg_value |= EnableBit;
	FUNC1(info);
}