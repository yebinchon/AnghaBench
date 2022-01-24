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
typedef  int /*<<< orphan*/  u_char ;
struct isar_reg {int clsb; } ;
struct IsdnCardState {int debug; int /*<<< orphan*/  (* BC_Write_Reg ) (struct IsdnCardState*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* BC_Read_Reg ) (struct IsdnCardState*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ISAR_IIA ; 
 int /*<<< orphan*/  ISAR_MBOX ; 
 int /*<<< orphan*/  ISAR_RADR ; 
 int L1_DEB_HSCX_FIFO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct IsdnCardState*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct IsdnCardState*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct IsdnCardState*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC7(struct IsdnCardState *cs, struct isar_reg *ireg, u_char *msg)
{
	int i;

	cs->BC_Write_Reg(cs, 1, ISAR_RADR, 0);
	if (msg && ireg->clsb) {
		msg[0] = cs->BC_Read_Reg(cs, 1, ISAR_MBOX);
		for (i=1; i < ireg->clsb; i++)
			 msg[i] = cs->BC_Read_Reg(cs, 2, ISAR_MBOX);
#if DUMP_MBOXFRAME>1
		if (cs->debug & L1_DEB_HSCX_FIFO) {
			char tmp[256], *t;
			
			i = ireg->clsb;
			while (i>0) {
				t = tmp;
				t += sprintf(t, "rcv_mbox cnt %d", ireg->clsb);
				QuickHex(t, &msg[ireg->clsb-i], (i>64) ? 64:i);
				debugl1(cs, tmp);
				i -= 64;
			}
		}
#endif
	}
	cs->BC_Write_Reg(cs, 1, ISAR_IIA, 0);
}