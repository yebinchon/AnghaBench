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
struct ipu {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IC_CONF ; 
 int /*<<< orphan*/  IDMAC_CHA_BUSY ; 
 int /*<<< orphan*/  IDMAC_CHA_EN ; 
 int /*<<< orphan*/  IDMAC_CHA_PRI ; 
 int /*<<< orphan*/  IDMAC_CONF ; 
 int /*<<< orphan*/  IPU_CHA_BUF0_RDY ; 
 int /*<<< orphan*/  IPU_CHA_BUF1_RDY ; 
 int /*<<< orphan*/  IPU_CHA_CUR_BUF ; 
 int /*<<< orphan*/  IPU_CHA_DB_MODE_SEL ; 
 int /*<<< orphan*/  IPU_TASKS_STAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ipu *ipu)
{
	FUNC0(ipu->dev, "IDMAC_CONF 0x%x, IC_CONF 0x%x, IDMAC_CHA_EN 0x%x, "
		"IDMAC_CHA_PRI 0x%x, IDMAC_CHA_BUSY 0x%x\n",
		FUNC1(ipu, IDMAC_CONF),
		FUNC1(ipu, IC_CONF),
		FUNC1(ipu, IDMAC_CHA_EN),
		FUNC1(ipu, IDMAC_CHA_PRI),
		FUNC1(ipu, IDMAC_CHA_BUSY));
	FUNC0(ipu->dev, "BUF0_RDY 0x%x, BUF1_RDY 0x%x, CUR_BUF 0x%x, "
		"DB_MODE 0x%x, TASKS_STAT 0x%x\n",
		FUNC2(ipu, IPU_CHA_BUF0_RDY),
		FUNC2(ipu, IPU_CHA_BUF1_RDY),
		FUNC2(ipu, IPU_CHA_CUR_BUF),
		FUNC2(ipu, IPU_CHA_DB_MODE_SEL),
		FUNC2(ipu, IPU_TASKS_STAT));
}