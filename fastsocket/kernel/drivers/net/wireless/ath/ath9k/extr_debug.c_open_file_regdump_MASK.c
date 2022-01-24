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
struct inode {struct ath_softc* i_private; } ;
struct file {int /*<<< orphan*/ * private_data; } ;
struct ath_softc {int /*<<< orphan*/  sc_ah; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 unsigned long REGDUMP_LINE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned long,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (unsigned long) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	struct ath_softc *sc = inode->i_private;
	unsigned int len = 0;
	u8 *buf;
	int i;
	unsigned long num_regs, regdump_len, max_reg_offset;

	max_reg_offset = FUNC0(sc->sc_ah) ? 0x16bd4 : 0xb500;
	num_regs = max_reg_offset / 4 + 1;
	regdump_len = num_regs * REGDUMP_LINE_SIZE + 1;
	buf = FUNC5(regdump_len);
	if (!buf)
		return -ENOMEM;

	FUNC3(sc);
	for (i = 0; i < num_regs; i++)
		len += FUNC4(buf + len, regdump_len - len,
			"0x%06x 0x%08x\n", i << 2, FUNC1(sc->sc_ah, i << 2));
	FUNC2(sc);

	file->private_data = buf;

	return 0;
}