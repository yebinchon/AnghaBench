#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_5__ {TYPE_1__* rx_skb; int /*<<< orphan*/  err_crc; int /*<<< orphan*/  err_rx; } ;
struct isac_hw {TYPE_2__ dch; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISACX_CMDRD ; 
 int /*<<< orphan*/  ISACX_CMDRD_RMC ; 
 int /*<<< orphan*/  ISACX_RBCLD ; 
 int /*<<< orphan*/  ISACX_RSTAD ; 
 int ISACX_RSTAD_CRC ; 
 int ISACX_RSTAD_RAB ; 
 int ISACX_RSTAD_RDO ; 
 int ISACX_RSTAD_VFR ; 
 int FUNC0 (struct isac_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isac_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct isac_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC7(struct isac_hw *isac)
{
	int count;
	u8 val;

	val = FUNC0(isac, ISACX_RSTAD);
	if ((val & (ISACX_RSTAD_VFR |
		    ISACX_RSTAD_RDO |
		    ISACX_RSTAD_CRC |
		    ISACX_RSTAD_RAB))
	    != (ISACX_RSTAD_VFR | ISACX_RSTAD_CRC)) {
		FUNC4("%s: RSTAD %#x, dropped\n", isac->name, val);
#ifdef ERROR_STATISTIC
		if (val & ISACX_RSTAD_CRC)
			isac->dch.err_rx++;
		else
			isac->dch.err_crc++;
#endif
		FUNC1(isac, ISACX_CMDRD, ISACX_CMDRD_RMC);
		if (isac->dch.rx_skb)
			FUNC2(isac->dch.rx_skb);
		isac->dch.rx_skb = NULL;
	} else {
		count = FUNC0(isac, ISACX_RBCLD) & 0x1f;
		if (count == 0)
			count = 32;
		FUNC3(isac, count);
		if (isac->dch.rx_skb) {
			FUNC6(isac->dch.rx_skb, isac->dch.rx_skb->len - 1);
			FUNC4("%s: dchannel received %d\n", isac->name,
				isac->dch.rx_skb->len);
			FUNC5(&isac->dch);
		}
	}
}