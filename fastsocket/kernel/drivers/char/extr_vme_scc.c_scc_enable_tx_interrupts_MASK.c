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
struct scc_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDR_TX_INT_ENAB ; 
 int /*<<< orphan*/  INT_AND_DMA_REG ; 
 int /*<<< orphan*/  FUNC0 (struct scc_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scc_port*) ; 

__attribute__((used)) static void FUNC5(void *ptr)
{
	struct scc_port *port = ptr;
	unsigned long	flags;
	FUNC0(port);

	FUNC3(flags);
	FUNC1(INT_AND_DMA_REG, 0xff, IDR_TX_INT_ENAB);
	/* restart the transmitter */
	FUNC4 (0, port);
	FUNC2(flags);
}