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

/* Variables and functions */
 int CDB10 ; 
 scalar_t__ COMMAND_REG ; 
 scalar_t__ CONF_REG_1 ; 
 scalar_t__ CONF_REG_2 ; 
 scalar_t__ CONF_REG_3 ; 
 scalar_t__ CONF_REG_4 ; 
 scalar_t__ CONF_REG_5 ; 
 int EAN ; 
 int EPC ; 
 int FCLK ; 
 int FE ; 
 scalar_t__ FEATURE_EN ; 
 int FSCSI ; 
 int IDMRC ; 
 int IE ; 
 int NOOP ; 
 int QTE ; 
 int RESET_CHIP ; 
 int SCSI2 ; 
 scalar_t__ STP ; 
 scalar_t__ SYNC_OFFSET ; 
 int TBPA ; 
 scalar_t__ TOM ; 
 int WSE0 ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(int base, int scsi_id)
{
	FUNC0(RESET_CHIP, base + COMMAND_REG);
	FUNC0(NOOP, base + COMMAND_REG);
	FUNC0(0x99, base + TOM); /* Time out of 250 ms */
	FUNC0(0x05, base + STP);
	FUNC0(0x00, base + SYNC_OFFSET);
	FUNC0(EPC | scsi_id, base + CONF_REG_1);
	FUNC0(FE | SCSI2 | TBPA, base + CONF_REG_2);
	FUNC0(IDMRC | QTE | CDB10 | FSCSI | FCLK, base + CONF_REG_3);
	FUNC0(0x83 | EAN, base + CONF_REG_4);
	FUNC0(IE | WSE0, base + CONF_REG_5);
	FUNC0(0, base + FEATURE_EN);
}