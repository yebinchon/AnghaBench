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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct seq_file {scalar_t__ private; } ;
struct i2o_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2o_device*,int,int,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC6(struct seq_file *seq, void *v)
{
	struct i2o_device *d = (struct i2o_device *)seq->private;
	static u32 work32[128];	// allow for "stuff" + up to 256 byte (max) serial number
	// == (allow) 512d bytes (max)
	static u16 *work16 = (u16 *) work32;
	int token;

	token = FUNC2(d, 0xF100, -1, &work32, sizeof(work32));

	if (token < 0) {
		FUNC3(seq, token, "0xF100 Device Identity");
		return 0;
	}

	FUNC5(seq, "Device Class  : %s\n", FUNC1(work16[0]));
	FUNC5(seq, "Owner TID     : %0#5x\n", work16[2]);
	FUNC5(seq, "Parent TID    : %0#5x\n", work16[3]);
	FUNC5(seq, "Vendor info   : %s\n",
		   FUNC0((u8 *) (work32 + 2), 16));
	FUNC5(seq, "Product info  : %s\n",
		   FUNC0((u8 *) (work32 + 6), 16));
	FUNC5(seq, "Description   : %s\n",
		   FUNC0((u8 *) (work32 + 10), 16));
	FUNC5(seq, "Product rev.  : %s\n",
		   FUNC0((u8 *) (work32 + 14), 8));

	FUNC5(seq, "Serial number : ");
	FUNC4(seq, (u8 *) (work32 + 16),
			    /* allow for SNLen plus
			     * possible trailing '\0'
			     */
			    sizeof(work32) - (16 * sizeof(u32)) - 2);
	FUNC5(seq, "\n");

	return 0;
}