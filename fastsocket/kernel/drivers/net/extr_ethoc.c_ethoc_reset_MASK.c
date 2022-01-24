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
struct ethoc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MASK_ALL ; 
 int /*<<< orphan*/  IPGT ; 
 int /*<<< orphan*/  MODER ; 
 int MODER_CRC ; 
 int MODER_FULLD ; 
 int MODER_PAD ; 
 int /*<<< orphan*/  FUNC0 (struct ethoc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ethoc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ethoc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ethoc*) ; 
 int FUNC4 (struct ethoc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ethoc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct ethoc *dev)
{
	u32 mode;

	/* TODO: reset controller? */

	FUNC1(dev);

	/* TODO: setup registers */

	/* enable FCS generation and automatic padding */
	mode = FUNC4(dev, MODER);
	mode |= MODER_CRC | MODER_PAD;
	FUNC5(dev, MODER, mode);

	/* set full-duplex mode */
	mode = FUNC4(dev, MODER);
	mode |= MODER_FULLD;
	FUNC5(dev, MODER, mode);
	FUNC5(dev, IPGT, 0x15);

	FUNC0(dev, INT_MASK_ALL);
	FUNC2(dev, INT_MASK_ALL);
	FUNC3(dev);
	return 0;
}