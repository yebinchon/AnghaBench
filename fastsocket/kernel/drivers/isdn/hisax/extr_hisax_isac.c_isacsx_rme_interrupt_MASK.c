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
struct sk_buff {int dummy; } ;
struct isac {unsigned char (* read_isac ) (struct isac*,int /*<<< orphan*/ ) ;int rcvidx; int /*<<< orphan*/  rcvbuf; int /*<<< orphan*/  (* write_isac ) (struct isac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  DBG_IRQ ; 
 int /*<<< orphan*/  DBG_RPACKET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  DBG_WARN ; 
 int /*<<< orphan*/  FUNC2 (struct isac*,int,struct sk_buff*) ; 
 int INDICATION ; 
 int /*<<< orphan*/  ISACSX_CMDRD ; 
 int /*<<< orphan*/  ISACSX_CMDRD_RMC ; 
 int /*<<< orphan*/  ISACSX_RBCLD ; 
 int /*<<< orphan*/  ISACSX_RSTAD ; 
 unsigned char ISACSX_RSTAD_CRC ; 
 unsigned char ISACSX_RSTAD_RAB ; 
 unsigned char ISACSX_RSTAD_RDO ; 
 unsigned char ISACSX_RSTAD_VFR ; 
 int PH_DATA ; 
 struct sk_buff* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct isac*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 unsigned char FUNC7 (struct isac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct isac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct isac*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC10(struct isac *isac)
{
	int count;
	struct sk_buff *skb;
	unsigned char val;

	val = isac->read_isac(isac, ISACSX_RSTAD);
	if ((val & (ISACSX_RSTAD_VFR | 
		    ISACSX_RSTAD_RDO | 
		    ISACSX_RSTAD_CRC | 
		    ISACSX_RSTAD_RAB)) 
	    != (ISACSX_RSTAD_VFR | ISACSX_RSTAD_CRC)) {
		FUNC0(DBG_WARN, "RSTAD %#x, dropped", val);
		isac->write_isac(isac, ISACSX_CMDRD, ISACSX_CMDRD_RMC);
		goto out;
	}

	count = isac->read_isac(isac, ISACSX_RBCLD) & 0x1f;
	FUNC0(DBG_IRQ, "RBCLD %#x", count);
	if (count == 0)
		count = 0x20;

	FUNC4(isac, count);
	// strip trailing status byte
	count = isac->rcvidx - 1;
	if (count < 1) {
		FUNC0(DBG_WARN, "count %d < 1", count);
		goto out;
	}

	skb = FUNC3(count);
	if (!skb) {
		FUNC0(DBG_WARN, "no memory, dropping");
		goto out;
	}
	FUNC5(FUNC6(skb, count), isac->rcvbuf, count);
	FUNC1(DBG_RPACKET, skb);
	FUNC2(isac, PH_DATA | INDICATION, skb);
 out:
	isac->rcvidx = 0;
}