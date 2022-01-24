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
struct IsdnCardState {int (* BC_Read_Reg ) (struct IsdnCardState*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* BC_Write_Reg ) (struct IsdnCardState*,int,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,char*) ; 
 int /*<<< orphan*/  jade_HDLC_IMR ; 
 int /*<<< orphan*/  jade_HDLC_ISR ; 
 int /*<<< orphan*/  jade_HDLC_STAR ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct IsdnCardState*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct IsdnCardState*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct IsdnCardState*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct IsdnCardState*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct IsdnCardState*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct IsdnCardState*,int,int /*<<< orphan*/ ,int) ; 

void
FUNC10(struct IsdnCardState *cs)
{
	int val;
	char tmp[64];

	cs->BC_Write_Reg(cs, 0, jade_HDLC_IMR, 0x00);
	cs->BC_Write_Reg(cs, 1, jade_HDLC_IMR, 0x00);

	val = cs->BC_Read_Reg(cs, 1, jade_HDLC_ISR);
	FUNC1(tmp, "jade B ISTA %x", val);
	FUNC0(cs, tmp);
	val = cs->BC_Read_Reg(cs, 0, jade_HDLC_ISR);
	FUNC1(tmp, "jade A ISTA %x", val);
	FUNC0(cs, tmp);
	val = cs->BC_Read_Reg(cs, 1, jade_HDLC_STAR);
	FUNC1(tmp, "jade B STAR %x", val);
	FUNC0(cs, tmp);
	val = cs->BC_Read_Reg(cs, 0, jade_HDLC_STAR);
	FUNC1(tmp, "jade A STAR %x", val);
	FUNC0(cs, tmp);
	/* Unmask ints */
	cs->BC_Write_Reg(cs, 0, jade_HDLC_IMR, 0xF8);
	cs->BC_Write_Reg(cs, 1, jade_HDLC_IMR, 0xF8);
}