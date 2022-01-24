#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ipac_hw {int type; int /*<<< orphan*/  isac; int /*<<< orphan*/  name; TYPE_2__* hscx; int /*<<< orphan*/  conf; } ;
struct TYPE_3__ {int debug; } ;
struct TYPE_4__ {TYPE_1__ bch; } ;

/* Variables and functions */
 int DEBUG_HW ; 
 int /*<<< orphan*/  IPAC_CONF ; 
 int /*<<< orphan*/  IPAC_ID ; 
 int /*<<< orphan*/  IPAC_MASK ; 
 int IPAC_TYPE_HSCX ; 
 int IPAC_TYPE_IPAC ; 
 int /*<<< orphan*/  IPAC__ON ; 
 int /*<<< orphan*/  FUNC0 (struct ipac_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipac_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct ipac_hw *ipac)
{
	u8 val;

	if (ipac->type & IPAC_TYPE_HSCX) {
		FUNC2(&ipac->hscx[0]);
		FUNC2(&ipac->hscx[1]);
		val = FUNC0(ipac, IPAC_ID);
	} else if (ipac->type & IPAC_TYPE_IPAC) {
		FUNC2(&ipac->hscx[0]);
		FUNC2(&ipac->hscx[1]);
		FUNC1(ipac, IPAC_MASK, IPAC__ON);
		val = FUNC0(ipac, IPAC_CONF);
		/* conf is default 0, but can be overwritten by card setup */
		FUNC4("%s: IPAC CONF %02x/%02x\n", ipac->name,
			val, ipac->conf);
		FUNC1(ipac, IPAC_CONF, ipac->conf);
		val = FUNC0(ipac, IPAC_ID);
		if (ipac->hscx[0].bch.debug & DEBUG_HW)
			FUNC5("%s: IPAC Design ID %02x\n", ipac->name, val);
	}
	/* nothing special for IPACX to do here */
	return FUNC3(&ipac->isac);
}