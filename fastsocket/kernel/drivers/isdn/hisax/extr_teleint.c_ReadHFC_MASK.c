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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_4__ {int addr; int /*<<< orphan*/  cip; } ;
struct TYPE_3__ {TYPE_2__ hfc; } ;
struct IsdnCardState {int debug; TYPE_1__ hw; } ;

/* Variables and functions */
 int L1_DEB_HSCX_FIFO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_char
FUNC3(struct IsdnCardState *cs, int data, u_char reg)
{
	register u_char ret;

	if (data) {
		cs->hw.hfc.cip = reg;
		FUNC1(cs->hw.hfc.addr | 1, reg);
		ret = FUNC0(cs->hw.hfc.addr);
		if (cs->debug & L1_DEB_HSCX_FIFO && (data != 2))
			FUNC2(cs, "hfc RD %02x %02x", reg, ret);
	} else
		ret = FUNC0(cs->hw.hfc.addr | 1);
	return (ret);
}