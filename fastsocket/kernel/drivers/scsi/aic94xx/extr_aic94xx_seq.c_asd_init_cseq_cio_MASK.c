#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ scbpro; } ;
struct asd_ha_struct {TYPE_1__ seq; } ;

/* Variables and functions */
 int ASD_DL_SIZE_BITS ; 
 scalar_t__ CARP2INTEN ; 
 int /*<<< orphan*/  CM11INTVEC0 ; 
 int /*<<< orphan*/  CM11INTVEC1 ; 
 int /*<<< orphan*/  CM11INTVEC2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  CPRGMCNT ; 
 scalar_t__ CSCRATCHPAGE ; 
 scalar_t__ CSEQCOMINTEN ; 
 int /*<<< orphan*/  CSEQCON ; 
 scalar_t__ CSEQDLCTL ; 
 scalar_t__ CSEQDLOFFS ; 
 int EN_ARP2HALTC ; 
 int /*<<< orphan*/  EN_CMnRSPMBXF ; 
 int /*<<< orphan*/  SCBPRO ; 
 int /*<<< orphan*/  FUNC3 (struct asd_ha_struct*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct asd_ha_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct asd_ha_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cseq_idle_loop ; 
 int /*<<< orphan*/ * cseq_vecs ; 

__attribute__((used)) static void FUNC6(struct asd_ha_struct *asd_ha)
{
	int i;

	FUNC3(asd_ha, CSEQCOMINTEN, 0);
	FUNC3(asd_ha, CSEQDLCTL, ASD_DL_SIZE_BITS);
	FUNC3(asd_ha, CSEQDLOFFS, 0);
	FUNC3(asd_ha, CSEQDLOFFS+1, 0);
	asd_ha->seq.scbpro = 0;
	FUNC4(asd_ha, SCBPRO, 0);
	FUNC4(asd_ha, CSEQCON, 0);

	/* Intialize CSEQ Mode 11 Interrupt Vectors.
	 * The addresses are 16 bit wide and in dword units.
	 * The values of their macros are in byte units.
	 * Thus we have to divide by 4. */
	FUNC5(asd_ha, CM11INTVEC0, cseq_vecs[0]);
	FUNC5(asd_ha, CM11INTVEC1, cseq_vecs[1]);
	FUNC5(asd_ha, CM11INTVEC2, cseq_vecs[2]);

	/* Enable ARP2HALTC (ARP2 Halted from Halt Code Write). */
	FUNC3(asd_ha, CARP2INTEN, EN_ARP2HALTC);

	/* Initialize CSEQ Scratch Page to 0x04. */
	FUNC3(asd_ha, CSCRATCHPAGE, 0x04);

	/* Initialize CSEQ Mode[0-8] Dependent registers. */
	/* Initialize Scratch Page to 0. */
	for (i = 0; i < 9; i++)
		FUNC3(asd_ha, FUNC2(i), 0);

	/* Reset the ARP2 Program Count. */
	FUNC5(asd_ha, CPRGMCNT, cseq_idle_loop);

	for (i = 0; i < 8; i++) {
		/* Intialize Mode n Link m Interrupt Enable. */
		FUNC4(asd_ha, FUNC0(i), EN_CMnRSPMBXF);
		/* Initialize Mode n Request Mailbox. */
		FUNC4(asd_ha, FUNC1(i), 0);
	}
}