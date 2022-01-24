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
typedef  int /*<<< orphan*/  work32 ;
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct seq_file {scalar_t__ private; } ;
struct i2o_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct i2o_device*,int,int,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, void *v)
{
	struct i2o_device *d = (struct i2o_device *)seq->private;
	static u32 work32[12];
	static u16 *work16 = (u16 *) work32;
	static u8 *work8 = (u8 *) work32;
	int token;

	token = FUNC0(d, 0xF103, -1, &work32, sizeof(work32));

	if (token < 0) {
		FUNC1(seq, token,
					"0xF103 SGL Operating Limits");
		return 0;
	}

	FUNC2(seq, "SGL chain size        : %d\n", work32[0]);
	FUNC2(seq, "Max SGL chain size    : %d\n", work32[1]);
	FUNC2(seq, "SGL chain size target : %d\n", work32[2]);
	FUNC2(seq, "SGL frag count        : %d\n", work16[6]);
	FUNC2(seq, "Max SGL frag count    : %d\n", work16[7]);
	FUNC2(seq, "SGL frag count target : %d\n", work16[8]);

/* FIXME
	if (d->i2oversion == 0x02)
	{
*/
	FUNC2(seq, "SGL data alignment    : %d\n", work16[8]);
	FUNC2(seq, "SGL addr limit        : %d\n", work8[20]);
	FUNC2(seq, "SGL addr sizes supported : ");
	if (work8[21] & 0x01)
		FUNC2(seq, "32 bit ");
	if (work8[21] & 0x02)
		FUNC2(seq, "64 bit ");
	if (work8[21] & 0x04)
		FUNC2(seq, "96 bit ");
	if (work8[21] & 0x08)
		FUNC2(seq, "128 bit ");
	FUNC2(seq, "\n");
/*
	}
*/

	return 0;
}