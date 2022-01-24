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
struct gru_context_configuration_handle {int /*<<< orphan*/  opc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCHOP_ALLOCATE ; 
 int /*<<< orphan*/  cchop_allocate ; 
 int /*<<< orphan*/  FUNC0 (struct gru_context_configuration_handle*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct gru_context_configuration_handle*,int /*<<< orphan*/ ) ; 

int FUNC3(struct gru_context_configuration_handle *cch)
{
	int ret;

	cch->opc = CCHOP_ALLOCATE;
	FUNC0(cch);
	ret = FUNC2(cch, cchop_allocate);

	/*
	 * Stop speculation into the GSEG being mapped by the previous ALLOCATE.
	 * The GSEG memory does not exist until the ALLOCATE completes.
	 */
	FUNC1();
	return ret;
}