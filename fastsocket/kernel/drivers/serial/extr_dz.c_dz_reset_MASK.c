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
struct dz_port {struct dz_mux* mux; } ;
struct dz_mux {int initialised; } ;

/* Variables and functions */
 int DZ_CLR ; 
 int /*<<< orphan*/  DZ_CSR ; 
 int DZ_MSE ; 
 int FUNC0 (struct dz_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dz_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct dz_port *dport)
{
	struct dz_mux *mux = dport->mux;

	if (mux->initialised)
		return;

	FUNC1(dport, DZ_CSR, DZ_CLR);
	while (FUNC0(dport, DZ_CSR) & DZ_CLR);
	FUNC2();

	/* Enable scanning.  */
	FUNC1(dport, DZ_CSR, DZ_MSE);

	mux->initialised = 1;
}