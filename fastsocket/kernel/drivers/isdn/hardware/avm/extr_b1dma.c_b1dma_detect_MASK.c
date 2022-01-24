#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int csr; int /*<<< orphan*/  port; } ;
typedef  TYPE_1__ avmcard ;

/* Variables and functions */
 int /*<<< orphan*/  AMCC_INTCSR ; 
 int /*<<< orphan*/  AMCC_MCSR ; 
 int /*<<< orphan*/  AMCC_RXLEN ; 
 int /*<<< orphan*/  AMCC_RXPTR ; 
 int /*<<< orphan*/  AMCC_TXLEN ; 
 int /*<<< orphan*/  AMCC_TXPTR ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(avmcard *card)
{
	FUNC1(card, 0, AMCC_MCSR);
	FUNC2(10);
	FUNC1(card, 0x0f000000, AMCC_MCSR); /* reset all */
	FUNC2(10);
	FUNC1(card, 0, AMCC_MCSR);
	FUNC2(42);

	FUNC1(card, 0, AMCC_RXLEN);
	FUNC1(card, 0, AMCC_TXLEN);
	card->csr = 0x0;
	FUNC1(card, card->csr, AMCC_INTCSR);

	if (FUNC0(card, AMCC_MCSR) != 0x000000E6)
		return 1;

	FUNC1(card, 0xffffffff, AMCC_RXPTR);
	FUNC1(card, 0xffffffff, AMCC_TXPTR);
	if (   FUNC0(card, AMCC_RXPTR) != 0xfffffffc
	    || FUNC0(card, AMCC_TXPTR) != 0xfffffffc)
		return 2;

	FUNC1(card, 0x0, AMCC_RXPTR);
	FUNC1(card, 0x0, AMCC_TXPTR);
	if (   FUNC0(card, AMCC_RXPTR) != 0x0
	    || FUNC0(card, AMCC_TXPTR) != 0x0)
		return 3;

	FUNC4(card->port, 0x10, 0x00);
	FUNC4(card->port, 0x07, 0x00);
	
	FUNC4(card->port, 0x02, 0x02);
	FUNC4(card->port, 0x03, 0x02);

	if (   (FUNC3(card->port, 0x02) & 0xFE) != 0x02
	    || FUNC3(card->port, 0x3) != 0x03)
		return 4;

	FUNC4(card->port, 0x02, 0x00);
	FUNC4(card->port, 0x03, 0x00);

	if (   (FUNC3(card->port, 0x02) & 0xFE) != 0x00
	    || FUNC3(card->port, 0x3) != 0x01)
		return 5;

	return 0;
}