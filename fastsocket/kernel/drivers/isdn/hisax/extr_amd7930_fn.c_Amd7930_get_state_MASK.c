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
struct TYPE_3__ {int ph_state; } ;
struct TYPE_4__ {TYPE_1__ amd7930; } ;
struct IsdnCardState {TYPE_2__ dc; } ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*) ; 
 int FUNC1 (struct IsdnCardState*,int) ; 

__attribute__((used)) static void
FUNC2(struct IsdnCardState *cs) {
        BYTE lsr = FUNC1(cs, 0xA1);
        cs->dc.amd7930.ph_state = (lsr & 0x7) + 2;
        FUNC0(cs);
}