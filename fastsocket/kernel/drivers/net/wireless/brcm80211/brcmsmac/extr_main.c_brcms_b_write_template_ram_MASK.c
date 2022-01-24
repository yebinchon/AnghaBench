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
typedef  int u32 ;
struct brcms_hardware {int /*<<< orphan*/  unit; struct bcma_device* d11core; } ;
struct bcma_device {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MCTL_BIGEND ; 
 int FUNC1 (struct bcma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bcma_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  maccontrol ; 
 int /*<<< orphan*/  FUNC6 (int*,void*,int) ; 
 int /*<<< orphan*/  tplatewrdata ; 
 int /*<<< orphan*/  tplatewrptr ; 

void
FUNC7(struct brcms_hardware *wlc_hw, int offset, int len,
			    void *buf)
{
	struct bcma_device *core = wlc_hw->d11core;
	u32 word;
	__le32 word_le;
	__be32 word_be;
	bool be_bit;
	FUNC3(core, "wl%d\n", wlc_hw->unit);

	FUNC2(core, FUNC0(tplatewrptr), offset);

	/* if MCTL_BIGEND bit set in mac control register,
	 * the chip swaps data in fifo, as well as data in
	 * template ram
	 */
	be_bit = (FUNC1(core, FUNC0(maccontrol)) & MCTL_BIGEND) != 0;

	while (len > 0) {
		FUNC6(&word, buf, sizeof(u32));

		if (be_bit) {
			word_be = FUNC4(word);
			word = *(u32 *)&word_be;
		} else {
			word_le = FUNC5(word);
			word = *(u32 *)&word_le;
		}

		FUNC2(core, FUNC0(tplatewrdata), word);

		buf = (u8 *) buf + sizeof(u32);
		len -= sizeof(u32);
	}
}