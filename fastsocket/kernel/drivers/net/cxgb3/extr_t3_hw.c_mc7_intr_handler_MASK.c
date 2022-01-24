#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  addr_err; int /*<<< orphan*/  parity_err; int /*<<< orphan*/  uncorr_err; int /*<<< orphan*/  corr_err; } ;
struct mc7 {scalar_t__ offset; int /*<<< orphan*/  name; TYPE_2__ stats; struct adapter* adapter; } ;
struct TYPE_3__ {scalar_t__ rev; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 scalar_t__ A_MC7_CE_ADDR ; 
 scalar_t__ A_MC7_CE_DATA0 ; 
 scalar_t__ A_MC7_CE_DATA1 ; 
 scalar_t__ A_MC7_CE_DATA2 ; 
 scalar_t__ A_MC7_ERR_ADDR ; 
 scalar_t__ A_MC7_INT_CAUSE ; 
 scalar_t__ A_MC7_UE_ADDR ; 
 scalar_t__ A_MC7_UE_DATA0 ; 
 scalar_t__ A_MC7_UE_DATA1 ; 
 scalar_t__ A_MC7_UE_DATA2 ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,char*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int F_AE ; 
 int F_CE ; 
 int F_UE ; 
 int FUNC2 (int) ; 
 int MC7_INTR_FATAL ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int FUNC4 (struct adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC6(struct mc7 *mc7)
{
	struct adapter *adapter = mc7->adapter;
	u32 cause = FUNC4(adapter, mc7->offset + A_MC7_INT_CAUSE);

	if (cause & F_CE) {
		mc7->stats.corr_err++;
		FUNC1(adapter, "%s MC7 correctable error at addr 0x%x, "
			"data 0x%x 0x%x 0x%x\n", mc7->name,
			FUNC4(adapter, mc7->offset + A_MC7_CE_ADDR),
			FUNC4(adapter, mc7->offset + A_MC7_CE_DATA0),
			FUNC4(adapter, mc7->offset + A_MC7_CE_DATA1),
			FUNC4(adapter, mc7->offset + A_MC7_CE_DATA2));
	}

	if (cause & F_UE) {
		mc7->stats.uncorr_err++;
		FUNC0(adapter, "%s MC7 uncorrectable error at addr 0x%x, "
			 "data 0x%x 0x%x 0x%x\n", mc7->name,
			 FUNC4(adapter, mc7->offset + A_MC7_UE_ADDR),
			 FUNC4(adapter, mc7->offset + A_MC7_UE_DATA0),
			 FUNC4(adapter, mc7->offset + A_MC7_UE_DATA1),
			 FUNC4(adapter, mc7->offset + A_MC7_UE_DATA2));
	}

	if (FUNC2(cause)) {
		mc7->stats.parity_err++;
		FUNC0(adapter, "%s MC7 parity error 0x%x\n",
			 mc7->name, FUNC2(cause));
	}

	if (cause & F_AE) {
		u32 addr = 0;

		if (adapter->params.rev > 0)
			addr = FUNC4(adapter,
					   mc7->offset + A_MC7_ERR_ADDR);
		mc7->stats.addr_err++;
		FUNC0(adapter, "%s MC7 address error: 0x%x\n",
			 mc7->name, addr);
	}

	if (cause & MC7_INTR_FATAL)
		FUNC3(adapter);

	FUNC5(adapter, mc7->offset + A_MC7_INT_CAUSE, cause);
}