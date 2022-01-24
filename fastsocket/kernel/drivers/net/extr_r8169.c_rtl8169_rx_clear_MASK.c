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
struct rtl8169_private {scalar_t__ RxDescArray; scalar_t__* Rx_databuff; } ;

/* Variables and functions */
 unsigned int NUM_RX_DESC ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8169_private*,scalar_t__*,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct rtl8169_private *tp)
{
	unsigned int i;

	for (i = 0; i < NUM_RX_DESC; i++) {
		if (tp->Rx_databuff[i]) {
			FUNC0(tp, tp->Rx_databuff + i,
					    tp->RxDescArray + i);
		}
	}
}