#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct jsm_channel {int /*<<< orphan*/  ch_bd; TYPE_1__* ch_neo_uart; } ;
struct TYPE_2__ {int /*<<< orphan*/  ier; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IER_RDI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct jsm_channel *ch)
{
	u8 tmp = FUNC1(&ch->ch_neo_uart->ier);
	tmp &= ~(UART_IER_RDI);
	FUNC2(tmp, &ch->ch_neo_uart->ier);

	/* flush write operation */
	FUNC0(ch->ch_bd);
}