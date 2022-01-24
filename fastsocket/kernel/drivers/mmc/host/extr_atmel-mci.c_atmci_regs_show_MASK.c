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
typedef  int u32 ;
struct seq_file {struct atmel_mci* private; } ;
struct atmel_mci {int /*<<< orphan*/  lock; int /*<<< orphan*/  mck; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MCI_ARGR ; 
 int MCI_BLKR ; 
 int MCI_DTOR ; 
 int MCI_IMR ; 
 int MCI_MR ; 
 int MCI_MR_RDPROOF ; 
 int MCI_MR_WRPROOF ; 
 int /*<<< orphan*/  MCI_REGS_SIZE ; 
 int MCI_SDCR ; 
 int MCI_SR ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct seq_file *s, void *v)
{
	struct atmel_mci	*host = s->private;
	u32			*buf;

	buf = FUNC4(MCI_REGS_SIZE, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	/*
	 * Grab a more or less consistent snapshot. Note that we're
	 * not disabling interrupts, so IMR and SR may not be
	 * consistent.
	 */
	FUNC7(&host->lock);
	FUNC2(host->mck);
	FUNC5(buf, host->regs, MCI_REGS_SIZE);
	FUNC1(host->mck);
	FUNC8(&host->lock);

	FUNC6(s, "MR:\t0x%08x%s%s CLKDIV=%u\n",
			buf[MCI_MR / 4],
			buf[MCI_MR / 4] & MCI_MR_RDPROOF ? " RDPROOF" : "",
			buf[MCI_MR / 4] & MCI_MR_WRPROOF ? " WRPROOF" : "",
			buf[MCI_MR / 4] & 0xff);
	FUNC6(s, "DTOR:\t0x%08x\n", buf[MCI_DTOR / 4]);
	FUNC6(s, "SDCR:\t0x%08x\n", buf[MCI_SDCR / 4]);
	FUNC6(s, "ARGR:\t0x%08x\n", buf[MCI_ARGR / 4]);
	FUNC6(s, "BLKR:\t0x%08x BCNT=%u BLKLEN=%u\n",
			buf[MCI_BLKR / 4],
			buf[MCI_BLKR / 4] & 0xffff,
			(buf[MCI_BLKR / 4] >> 16) & 0xffff);

	/* Don't read RSPR and RDR; it will consume the data there */

	FUNC0(s, "SR", buf[MCI_SR / 4]);
	FUNC0(s, "IMR", buf[MCI_IMR / 4]);

	FUNC3(buf);

	return 0;
}