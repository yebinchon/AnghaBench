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
typedef  scalar_t__ u_char ;
struct TYPE_4__ {scalar_t__ last_fifo; scalar_t__ base; } ;
struct TYPE_3__ {TYPE_2__ hfcsx; } ;
struct IsdnCardState {TYPE_1__ hw; } ;

/* Variables and functions */
 scalar_t__ HFCSX_FIF_SEL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(struct IsdnCardState *cs, u_char fifo)
{
        if (fifo == cs->hw.hfcsx.last_fifo) 
	  return; /* still valid */

        FUNC1(cs->hw.hfcsx.base+1, HFCSX_FIF_SEL);
	FUNC1(cs->hw.hfcsx.base, fifo);
	while (FUNC0(cs->hw.hfcsx.base+1) & 1); /* wait for busy */
	FUNC2(4);
	FUNC1(cs->hw.hfcsx.base, fifo);
	while (FUNC0(cs->hw.hfcsx.base+1) & 1); /* wait for busy */
}