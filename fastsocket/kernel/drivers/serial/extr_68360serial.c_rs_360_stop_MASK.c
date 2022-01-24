#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  name; scalar_t__ driver_data; } ;
struct smc_regs {int /*<<< orphan*/  smc_smcm; } ;
struct scc_regs {int /*<<< orphan*/  scc_sccm; } ;
struct TYPE_6__ {TYPE_1__* state; } ;
typedef  TYPE_2__ ser_info_t ;
struct TYPE_7__ {struct smc_regs* smc_regs; struct scc_regs* scc_regs; } ;
struct TYPE_5__ {int smc_scc_num; } ;

/* Variables and functions */
 int NUM_IS_SCC ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  SMCM_TX ; 
 int /*<<< orphan*/  UART_SCCM_TX ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 TYPE_4__* pquicc ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	ser_info_t *info = (ser_info_t *)tty->driver_data;
	int	idx;
	unsigned long flags;
 	volatile struct scc_regs *sccp;
 	volatile struct smc_regs *smcp;

	if (FUNC3(info, tty->name, "rs_stop"))
		return;
	
	FUNC2(flags);
	idx = FUNC0(info->state->smc_scc_num);
	if (info->state->smc_scc_num & NUM_IS_SCC) {
		sccp = &pquicc->scc_regs[idx];
		sccp->scc_sccm &= ~UART_SCCM_TX;
	} else {
		/* smcp = &cpmp->cp_smc[idx]; */
		smcp = &pquicc->smc_regs[idx];
		smcp->smc_smcm &= ~SMCM_TX;
	}
	FUNC1(flags);
}