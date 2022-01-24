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
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int INDICATION ; 
 int /*<<< orphan*/  ISAC_CMDR ; 
 int /*<<< orphan*/  ISAC_CMDR_RMC ; 
 int /*<<< orphan*/  ISAC_RBCL ; 
 int /*<<< orphan*/  ISAC_RSTA ; 
 unsigned char ISAC_RSTA_CRC ; 
 unsigned char ISAC_RSTA_RAB ; 
 unsigned char ISAC_RSTA_RDO ; 
 int PH_DATA ; 
 struct sk_buff* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct isac*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 unsigned char FUNC7 (struct isac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct isac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct isac*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC10(struct isac *isac)
{
	unsigned char val;
	int count;
	struct sk_buff *skb;
	
	val = isac->read_isac(isac, ISAC_RSTA);
	if ((val & (ISAC_RSTA_RDO | ISAC_RSTA_CRC | ISAC_RSTA_RAB) )
	     != ISAC_RSTA_CRC) {
		FUNC0(DBG_WARN, "RSTA %#x, dropped", val);
		isac->write_isac(isac, ISAC_CMDR, ISAC_CMDR_RMC);
		goto out;
	}

	count = isac->read_isac(isac, ISAC_RBCL) & 0x1f;
	FUNC0(DBG_IRQ, "RBCL %#x", count);
	if (count == 0)
		count = 0x20;

	FUNC4(isac, count);
	count = isac->rcvidx;
	if (count < 1) {
		FUNC0(DBG_WARN, "count %d < 1", count);
		goto out;
	}

	skb = FUNC3(count, GFP_ATOMIC);
	if (!skb) {
		FUNC0(DBG_WARN, "no memory, dropping\n");
		goto out;
	}
	FUNC5(FUNC6(skb, count), isac->rcvbuf, count);
	FUNC1(DBG_RPACKET, skb);
	FUNC2(isac, PH_DATA | INDICATION, skb);
 out:
	isac->rcvidx = 0;
}