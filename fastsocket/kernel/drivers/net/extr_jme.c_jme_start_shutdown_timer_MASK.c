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
typedef  int u32 ;
struct jme_adapter {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int APMC_PHP_SHUTDOWN_DELAY ; 
 int /*<<< orphan*/  JME_APMC ; 
 int JME_APMC_EPIEN_CTRL ; 
 int JME_APMC_EPIEN_CTRL_EN ; 
 int JME_APMC_PCIE_SD_EN ; 
 int /*<<< orphan*/  JME_FLAG_SHUTDOWN ; 
 int /*<<< orphan*/  JME_TIMER2 ; 
 int /*<<< orphan*/  JME_TMCSR ; 
 int TMCSR_CNT ; 
 int TMCSR_EN ; 
 int FUNC0 (struct jme_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct jme_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  no_extplug ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(struct jme_adapter *jme)
{
	u32 apmc;

	apmc = FUNC0(jme, JME_APMC) | JME_APMC_PCIE_SD_EN;
	apmc &= ~JME_APMC_EPIEN_CTRL;
	if (!no_extplug) {
		FUNC2(jme, JME_APMC, apmc | JME_APMC_EPIEN_CTRL_EN);
		FUNC4();
	}
	FUNC2(jme, JME_APMC, apmc);

	FUNC2(jme, JME_TIMER2, 0);
	FUNC3(JME_FLAG_SHUTDOWN, &jme->flags);
	FUNC1(jme, JME_TMCSR,
		TMCSR_EN | ((0xFFFFFF - APMC_PHP_SHUTDOWN_DELAY) & TMCSR_CNT));
}