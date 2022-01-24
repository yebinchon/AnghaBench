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
struct rtl8169_private {scalar_t__ RxDescArray; void** Rx_databuff; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned int NUM_RX_DESC ; 
 void* FUNC0 (struct rtl8169_private*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*) ; 

__attribute__((used)) static int FUNC4(struct rtl8169_private *tp)
{
	unsigned int i;

	for (i = 0; i < NUM_RX_DESC; i++) {
		void *data;

		if (tp->Rx_databuff[i])
			continue;

		data = FUNC0(tp, tp->RxDescArray + i);
		if (!data) {
			FUNC1(tp->RxDescArray + i);
			goto err_out;
		}
		tp->Rx_databuff[i] = data;
	}

	FUNC2(tp->RxDescArray + NUM_RX_DESC - 1);
	return 0;

err_out:
	FUNC3(tp);
	return -ENOMEM;
}