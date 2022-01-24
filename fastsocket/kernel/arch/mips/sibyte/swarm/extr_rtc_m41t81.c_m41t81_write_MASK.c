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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  M41T81_CCR_ADDRESS ; 
 int M_SMB_BUSY ; 
 int M_SMB_ERROR ; 
 int /*<<< orphan*/  R_SMB_CMD ; 
 int /*<<< orphan*/  R_SMB_DATA ; 
 int /*<<< orphan*/  R_SMB_START ; 
 int /*<<< orphan*/  R_SMB_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int V_SMB_TT_RD1BYTE ; 
 int V_SMB_TT_WR2BYTE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(uint8_t addr, int b)
{
	while (FUNC2(FUNC0(R_SMB_STATUS)) & M_SMB_BUSY)
		;

	FUNC3(addr & 0xff, FUNC0(R_SMB_CMD));
	FUNC3(b & 0xff, FUNC0(R_SMB_DATA));
	FUNC3(FUNC1(M41T81_CCR_ADDRESS) | V_SMB_TT_WR2BYTE,
		     FUNC0(R_SMB_START));

	while (FUNC2(FUNC0(R_SMB_STATUS)) & M_SMB_BUSY)
		;

	if (FUNC2(FUNC0(R_SMB_STATUS)) & M_SMB_ERROR) {
		/* Clear error bit by writing a 1 */
		FUNC3(M_SMB_ERROR, FUNC0(R_SMB_STATUS));
		return -1;
	}

	/* read the same byte again to make sure it is written */
	FUNC3(FUNC1(M41T81_CCR_ADDRESS) | V_SMB_TT_RD1BYTE,
		     FUNC0(R_SMB_START));

	while (FUNC2(FUNC0(R_SMB_STATUS)) & M_SMB_BUSY)
		;

	return 0;
}