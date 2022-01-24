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
struct scc_channel {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
#define  EXINT 131 
#define  RXINT 130 
#define  SPINT 129 
#define  TXINT 128 
 int VECTOR_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct scc_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct scc_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct scc_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct scc_channel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct scc_channel *scc, int vector)
{
	FUNC4(&scc->lock);
	switch (vector & VECTOR_MASK)
	{
		case TXINT: FUNC3(scc); break;
		case EXINT: FUNC0(scc); break;
		case RXINT: FUNC1(scc); break;
		case SPINT: FUNC2(scc); break;
	}
	FUNC5(&scc->lock);
}