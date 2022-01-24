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
typedef  int /*<<< orphan*/  u8 ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ecdump_regs ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char) ; 

__attribute__((used)) static int FUNC3(struct seq_file *m)
{
	int i, j;
	u8 v;

	FUNC1(m, "EC      "
		       " +00 +01 +02 +03 +04 +05 +06 +07"
		       " +08 +09 +0a +0b +0c +0d +0e +0f\n");
	for (i = 0; i < 256; i += 16) {
		FUNC1(m, "EC 0x%02x:", i);
		for (j = 0; j < 16; j++) {
			if (!FUNC0(i + j, &v))
				break;
			if (v != ecdump_regs[i + j])
				FUNC1(m, " *%02x", v);
			else
				FUNC1(m, "  %02x", v);
			ecdump_regs[i + j] = v;
		}
		FUNC2(m, '\n');
		if (j != 16)
			break;
	}

	/* These are way too dangerous to advertise openly... */
#if 0
	seq_printf(m, "commands:\t0x<offset> 0x<value>"
		       " (<offset> is 00-ff, <value> is 00-ff)\n");
	seq_printf(m, "commands:\t0x<offset> <value>  "
		       " (<offset> is 00-ff, <value> is 0-255)\n");
#endif
	return 0;
}