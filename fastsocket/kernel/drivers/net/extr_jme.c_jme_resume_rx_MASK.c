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
struct dynpcc_info {scalar_t__ cnt; void* attempt; void* cur; } ;
struct jme_adapter {int /*<<< orphan*/  link_changing; int /*<<< orphan*/  rxempty_task; int /*<<< orphan*/  rxclean_task; int /*<<< orphan*/  flags; struct dynpcc_info dpi; } ;

/* Variables and functions */
 int /*<<< orphan*/  JME_FLAG_POLL ; 
 int /*<<< orphan*/  FUNC0 (struct jme_adapter*) ; 
 void* PCC_P1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct jme_adapter*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC5(struct jme_adapter *jme)
{
	struct dynpcc_info *dpi = &(jme->dpi);

	if (FUNC4(JME_FLAG_POLL, &jme->flags)) {
		FUNC0(jme);
	} else {
		FUNC3(&jme->rxclean_task);
		FUNC3(&jme->rxempty_task);
	}
	dpi->cur		= PCC_P1;
	dpi->attempt		= PCC_P1;
	dpi->cnt		= 0;
	FUNC2(jme, PCC_P1);

	FUNC1(&jme->link_changing);
}