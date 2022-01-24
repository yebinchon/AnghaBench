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
struct scc_channel {int /*<<< orphan*/  irq; int /*<<< orphan*/ * tx_buff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scc_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct scc_channel*) ; 

__attribute__((used)) static void FUNC4(unsigned long channel)
{
	struct scc_channel *scc = (struct scc_channel *) channel;

	FUNC2(scc);

	if (scc->tx_buff == NULL)
	{
		FUNC0(scc->irq);
		FUNC3(scc);	
		FUNC1(scc->irq);
	}
}