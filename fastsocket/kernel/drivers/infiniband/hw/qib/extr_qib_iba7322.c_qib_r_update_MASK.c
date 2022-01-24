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
typedef  int u64 ;
struct qib_devdata {int dummy; } ;

/* Variables and functions */
 int BISTEN_LSB ; 
 int R_OPCODE_LSB ; 
 int R_OP_UPDATE ; 
 int SJA_EN ; 
 int /*<<< orphan*/  kr_r_access ; 
 int /*<<< orphan*/  kr_scratch ; 
 int FUNC0 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct qib_devdata *dd, int bisten)
{
	u64 val;
	int ret;

	val = SJA_EN | (bisten << BISTEN_LSB) | (R_OP_UPDATE << R_OPCODE_LSB);
	ret = FUNC0(dd);
	if (ret >= 0) {
		FUNC2(dd, kr_r_access, val);
		FUNC1(dd, kr_scratch);
	}
	return ret;
}