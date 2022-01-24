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
typedef  int /*<<< orphan*/  mips_instruction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bc_op ; 
#define  bcond_op 154 
#define  beq_op 153 
#define  beql_op 152 
#define  bgez_op 151 
#define  bgezal_op 150 
#define  bgezall_op 149 
#define  bgezl_op 148 
#define  bgtz_op 147 
#define  bgtzl_op 146 
#define  blez_op 145 
#define  blezl_op 144 
#define  bltz_op 143 
#define  bltzal_op 142 
#define  bltzall_op 141 
#define  bltzl_op 140 
#define  bne_op 139 
#define  bnel_op 138 
#define  cop0_op 137 
#define  cop1_op 136 
#define  cop1x_op 135 
#define  cop2_op 134 
#define  j_op 133 
#define  jal_op 132 
#define  jalr_op 131 
#define  jalx_op 130 
#define  jr_op 129 
#define  spec_op 128 

__attribute__((used)) static int FUNC4(mips_instruction * i)
{
	switch (FUNC1(*i)) {
	case spec_op:
		switch (FUNC0(*i)) {
		case jalr_op:
		case jr_op:
			return 1;
		}
		break;

	case bcond_op:
		switch (FUNC3(*i)) {
		case bltz_op:
		case bgez_op:
		case bltzl_op:
		case bgezl_op:
		case bltzal_op:
		case bgezal_op:
		case bltzall_op:
		case bgezall_op:
			return 1;
		}
		break;

	case j_op:
	case jal_op:
	case jalx_op:
	case beq_op:
	case bne_op:
	case blez_op:
	case bgtz_op:
	case beql_op:
	case bnel_op:
	case blezl_op:
	case bgtzl_op:
		return 1;

	case cop0_op:
	case cop1_op:
	case cop2_op:
	case cop1x_op:
		if (FUNC2(*i) == bc_op)
			return 1;
		break;
	}

	return 0;
}