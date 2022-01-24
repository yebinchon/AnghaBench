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
struct serio {struct psif* port_data; } ;
struct psif {int /*<<< orphan*/  pclk; scalar_t__ open; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR ; 
 int /*<<< orphan*/  CR_RXDIS ; 
 int /*<<< orphan*/  CR_TXDIS ; 
 int /*<<< orphan*/  IDR ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct psif*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct serio *io)
{
	struct psif *psif = io->port_data;

	psif->open = 0;

	FUNC2(psif, IDR, ~0UL);
	FUNC2(psif, CR, FUNC0(CR_TXDIS) | FUNC0(CR_RXDIS));

	FUNC1(psif->pclk);
}