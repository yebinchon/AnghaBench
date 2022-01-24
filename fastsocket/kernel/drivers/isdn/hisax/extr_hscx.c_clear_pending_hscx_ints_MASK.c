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
 int /*<<< orphan*/  HSCX_EXIR ; 
 int /*<<< orphan*/  HSCX_ISTA ; 
 int /*<<< orphan*/  HSCX_MASK ; 
 int /*<<< orphan*/  HSCX_STAR ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,char*,int) ; 
 int FUNC1 (struct IsdnCardState*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct IsdnCardState*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct IsdnCardState*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct IsdnCardState*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct IsdnCardState*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct IsdnCardState*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct IsdnCardState*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct IsdnCardState*,int,int /*<<< orphan*/ ,int) ; 

void
FUNC9(struct IsdnCardState *cs)
{
	int val, eval;

	val = cs->BC_Read_Reg(cs, 1, HSCX_ISTA);
	FUNC0(cs, "HSCX B ISTA %x", val);
	if (val & 0x01) {
		eval = cs->BC_Read_Reg(cs, 1, HSCX_EXIR);
		FUNC0(cs, "HSCX B EXIR %x", eval);
	}
	if (val & 0x02) {
		eval = cs->BC_Read_Reg(cs, 0, HSCX_EXIR);
		FUNC0(cs, "HSCX A EXIR %x", eval);
	}
	val = cs->BC_Read_Reg(cs, 0, HSCX_ISTA);
	FUNC0(cs, "HSCX A ISTA %x", val);
	val = cs->BC_Read_Reg(cs, 1, HSCX_STAR);
	FUNC0(cs, "HSCX B STAR %x", val);
	val = cs->BC_Read_Reg(cs, 0, HSCX_STAR);
	FUNC0(cs, "HSCX A STAR %x", val);
	/* disable all IRQ */
	cs->BC_Write_Reg(cs, 0, HSCX_MASK, 0xFF);
	cs->BC_Write_Reg(cs, 1, HSCX_MASK, 0xFF);
}