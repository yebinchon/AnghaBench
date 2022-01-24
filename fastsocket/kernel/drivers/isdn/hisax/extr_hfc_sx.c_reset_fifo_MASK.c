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
struct TYPE_3__ {int cirm; scalar_t__ base; } ;
struct TYPE_4__ {TYPE_1__ hfcsx; } ;
struct IsdnCardState {TYPE_2__ hw; } ;

/* Variables and functions */
 int HFCSX_CIRM ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(struct IsdnCardState *cs, u_char fifo)
{
	FUNC2(cs, fifo); /* first select the fifo */
	FUNC1(cs->hw.hfcsx.base+1, HFCSX_CIRM);
	FUNC1(cs->hw.hfcsx.base, cs->hw.hfcsx.cirm | 0x80); /* reset cmd */
	FUNC3(1);
	while (FUNC0(cs->hw.hfcsx.base+1) & 1); /* wait for busy */
}