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
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct budget_av {int dummy; } ;

/* Variables and functions */
 int MASK_10 ; 
 int /*<<< orphan*/  FUNC0 (int,char*,struct saa7146_dev*,struct budget_av*) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7146_dev*,int*) ; 

__attribute__((used)) static void FUNC2(struct saa7146_dev *dev, u32 * isr)
{
	struct budget_av *budget_av = (struct budget_av *) dev->ext_priv;

	FUNC0(8, "dev: %p, budget_av: %p\n", dev, budget_av);

	if (*isr & MASK_10)
		FUNC1(dev, isr);
}