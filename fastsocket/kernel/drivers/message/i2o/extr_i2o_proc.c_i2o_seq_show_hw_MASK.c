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
typedef  int u32 ;
typedef  char* u16 ;
struct seq_file {scalar_t__ private; } ;
struct i2o_controller {int /*<<< orphan*/  exec; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int,int**,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, void *v)
{
	struct i2o_controller *c = (struct i2o_controller *)seq->private;
	static u32 work32[5];
	static u8 *work8 = (u8 *) work32;
	static u16 *work16 = (u16 *) work32;
	int token;
	u32 hwcap;

	static char *cpu_table[] = {
		"Intel 80960 series",
		"AMD2900 series",
		"Motorola 68000 series",
		"ARM series",
		"MIPS series",
		"Sparc series",
		"PowerPC series",
		"Intel x86 series"
	};

	token =
	    FUNC0(c->exec, 0x0000, -1, &work32, sizeof(work32));

	if (token < 0) {
		FUNC1(seq, token, "0x0000 IOP Hardware");
		return 0;
	}

	FUNC2(seq, "I2O Vendor ID    : %0#6x\n", work16[0]);
	FUNC2(seq, "Product ID       : %0#6x\n", work16[1]);
	FUNC2(seq, "CPU              : ");
	if (work8[16] > 8)
		FUNC2(seq, "Unknown\n");
	else
		FUNC2(seq, "%s\n", cpu_table[work8[16]]);
	/* Anyone using ProcessorVersion? */

	FUNC2(seq, "RAM              : %dkB\n", work32[1] >> 10);
	FUNC2(seq, "Non-Volatile Mem : %dkB\n", work32[2] >> 10);

	hwcap = work32[3];
	FUNC2(seq, "Capabilities : 0x%08x\n", hwcap);
	FUNC2(seq, "   [%s] Self booting\n",
		   (hwcap & 0x00000001) ? "+" : "-");
	FUNC2(seq, "   [%s] Upgradable IRTOS\n",
		   (hwcap & 0x00000002) ? "+" : "-");
	FUNC2(seq, "   [%s] Supports downloading DDMs\n",
		   (hwcap & 0x00000004) ? "+" : "-");
	FUNC2(seq, "   [%s] Supports installing DDMs\n",
		   (hwcap & 0x00000008) ? "+" : "-");
	FUNC2(seq, "   [%s] Battery-backed RAM\n",
		   (hwcap & 0x00000010) ? "+" : "-");

	return 0;
}