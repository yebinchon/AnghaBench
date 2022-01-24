#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/ * rx_skb; int /*<<< orphan*/  err_crc; int /*<<< orphan*/  err_rx; } ;
struct isac_hw {TYPE_1__ dch; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISAC_CMDR ; 
 int /*<<< orphan*/  ISAC_RBCL ; 
 int /*<<< orphan*/  ISAC_RSTA ; 
 int FUNC0 (struct isac_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isac_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct isac_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(struct isac_hw *isac)
{
	u8 val, count;

	val = FUNC0(isac, ISAC_RSTA);
	if ((val & 0x70) != 0x20) {
		if (val & 0x40) {
			FUNC4("%s: ISAC RDO\n", isac->name);
#ifdef ERROR_STATISTIC
			isac->dch.err_rx++;
#endif
		}
		if (!(val & 0x20)) {
			FUNC4("%s: ISAC CRC error\n", isac->name);
#ifdef ERROR_STATISTIC
			isac->dch.err_crc++;
#endif
		}
		FUNC1(isac, ISAC_CMDR, 0x80);
		if (isac->dch.rx_skb)
			FUNC2(isac->dch.rx_skb);
		isac->dch.rx_skb = NULL;
	} else {
		count = FUNC0(isac, ISAC_RBCL) & 0x1f;
		if (count == 0)
			count = 32;
		FUNC3(isac, count);
		FUNC5(&isac->dch);
	}
}