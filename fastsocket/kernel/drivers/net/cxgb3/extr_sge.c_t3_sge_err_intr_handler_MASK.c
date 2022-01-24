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
struct adapter {int /*<<< orphan*/  db_empty_task; int /*<<< orphan*/  db_full_task; int /*<<< orphan*/  db_drop_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_INT_CAUSE ; 
 int /*<<< orphan*/  A_SG_RSPQ_FL_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*,...) ; 
 unsigned int F_FLEMPTY ; 
 unsigned int F_HIPIODRBDROPERR ; 
 unsigned int F_HIPRIORITYDBEMPTY ; 
 unsigned int F_HIPRIORITYDBFULL ; 
 unsigned int F_LOPIODRBDROPERR ; 
 unsigned int F_LOPRIORITYDBEMPTY ; 
 unsigned int F_LOPRIORITYDBFULL ; 
 unsigned int F_RSPQCREDITOVERFOW ; 
 unsigned int F_RSPQDISABLED ; 
 unsigned int SGE_FATALERR ; 
 unsigned int SGE_FRAMINGERR ; 
 unsigned int SGE_PARERR ; 
 unsigned int S_RSPQ0DISABLED ; 
 int /*<<< orphan*/  cxgb3_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 unsigned int FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC5(struct adapter *adapter)
{
	unsigned int v, status = FUNC3(adapter, A_SG_INT_CAUSE) &
				 ~F_FLEMPTY;

	if (status & SGE_PARERR)
		FUNC0(adapter, "SGE parity error (0x%x)\n",
			 status & SGE_PARERR);
	if (status & SGE_FRAMINGERR)
		FUNC0(adapter, "SGE framing error (0x%x)\n",
			 status & SGE_FRAMINGERR);

	if (status & F_RSPQCREDITOVERFOW)
		FUNC0(adapter, "SGE response queue credit overflow\n");

	if (status & F_RSPQDISABLED) {
		v = FUNC3(adapter, A_SG_RSPQ_FL_STATUS);

		FUNC0(adapter,
			 "packet delivered to disabled response queue "
			 "(0x%x)\n", (v >> S_RSPQ0DISABLED) & 0xff);
	}

	if (status & (F_HIPIODRBDROPERR | F_LOPIODRBDROPERR))
		FUNC1(cxgb3_wq, &adapter->db_drop_task);

	if (status & (F_HIPRIORITYDBFULL | F_LOPRIORITYDBFULL))
		FUNC1(cxgb3_wq, &adapter->db_full_task);

	if (status & (F_HIPRIORITYDBEMPTY | F_LOPRIORITYDBEMPTY))
		FUNC1(cxgb3_wq, &adapter->db_empty_task);

	FUNC4(adapter, A_SG_INT_CAUSE, status);
	if (status &  SGE_FATALERR)
		FUNC2(adapter);
}