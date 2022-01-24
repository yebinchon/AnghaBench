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
struct jme_adapter {int /*<<< orphan*/  rxempty_task; int /*<<< orphan*/  rxclean_task; int /*<<< orphan*/  flags; int /*<<< orphan*/  link_changing; } ;

/* Variables and functions */
 int /*<<< orphan*/  JME_FLAG_POLL ; 
 int /*<<< orphan*/  FUNC0 (struct jme_adapter*) ; 
 int /*<<< orphan*/  PCC_OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct jme_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC5(struct jme_adapter *jme)
{
	FUNC1(&jme->link_changing);

	FUNC2(jme, PCC_OFF);
	if (FUNC4(JME_FLAG_POLL, &jme->flags)) {
		FUNC0(jme);
	} else {
		FUNC3(&jme->rxclean_task);
		FUNC3(&jme->rxempty_task);
	}
}