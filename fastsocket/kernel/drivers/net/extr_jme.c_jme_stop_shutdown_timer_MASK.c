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
 int /*<<< orphan*/  JME_APMC ; 
 int JME_APMC_EPIEN_CTRL ; 
 int JME_APMC_EPIEN_CTRL_DIS ; 
 int JME_APMC_PCIE_SD_EN ; 
 int /*<<< orphan*/  JME_FLAG_SHUTDOWN ; 
 int /*<<< orphan*/  JME_TIMER2 ; 
 int /*<<< orphan*/  JME_TMCSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct jme_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct jme_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(struct jme_adapter *jme)
{
	u32 apmc;

	FUNC2(jme, JME_TMCSR, 0);
	FUNC2(jme, JME_TIMER2, 0);
	FUNC0(JME_FLAG_SHUTDOWN, &jme->flags);

	apmc = FUNC1(jme, JME_APMC);
	apmc &= ~(JME_APMC_PCIE_SD_EN | JME_APMC_EPIEN_CTRL);
	FUNC2(jme, JME_APMC, apmc | JME_APMC_EPIEN_CTRL_DIS);
	FUNC3();
	FUNC2(jme, JME_APMC, apmc);
}