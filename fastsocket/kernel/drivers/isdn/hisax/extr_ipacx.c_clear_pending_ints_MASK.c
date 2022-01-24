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
struct IsdnCardState {int (* readisac ) (struct IsdnCardState*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* BC_Read_Reg ) (struct IsdnCardState*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* BC_Write_Reg ) (struct IsdnCardState*,int,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* writeisac ) (struct IsdnCardState*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IPACX_CIR0 ; 
 int /*<<< orphan*/  IPACX_ISTA ; 
 int /*<<< orphan*/  IPACX_ISTAB ; 
 int /*<<< orphan*/  IPACX_ISTAD ; 
 int /*<<< orphan*/  IPACX_MASK ; 
 int /*<<< orphan*/  IPACX_MASKB ; 
 int /*<<< orphan*/  IPACX_MASKD ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct IsdnCardState*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct IsdnCardState*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct IsdnCardState *cs)
{
	int ista;

  // all interrupts off
  cs->writeisac(cs, IPACX_MASK, 0xff);
	cs->writeisac(cs, IPACX_MASKD, 0xff);
	cs->BC_Write_Reg(cs, 0, IPACX_MASKB, 0xff);
	cs->BC_Write_Reg(cs, 1, IPACX_MASKB, 0xff);
  
  ista = cs->readisac(cs, IPACX_ISTA); 
  if (ista &0x80) cs->BC_Read_Reg(cs, 0, IPACX_ISTAB);
  if (ista &0x40) cs->BC_Read_Reg(cs, 1, IPACX_ISTAB);
  if (ista &0x10) cs->readisac(cs, IPACX_CIR0);
  if (ista &0x01) cs->readisac(cs, IPACX_ISTAD); 
}