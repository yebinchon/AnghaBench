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
struct de_private {scalar_t__ tx_tail; scalar_t__ tx_head; scalar_t__ rx_tail; } ;

/* Variables and functions */
 int /*<<< orphan*/  IntrMask ; 
 int /*<<< orphan*/  MacStatus ; 
 int /*<<< orphan*/  FUNC0 (struct de_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4 (struct de_private *de)
{

	FUNC3(5);
	FUNC2(IntrMask, 0);

	FUNC0(de);

	FUNC2(MacStatus, FUNC1(MacStatus));

	FUNC3(10);

	de->rx_tail = 0;
	de->tx_head = de->tx_tail = 0;
}