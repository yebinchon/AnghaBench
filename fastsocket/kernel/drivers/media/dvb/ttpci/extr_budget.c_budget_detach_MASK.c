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
struct saa7146_dev {int /*<<< orphan*/ * ext_priv; } ;
struct budget {scalar_t__ dvb_frontend; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct budget*) ; 
 int FUNC3 (struct budget*) ; 

__attribute__((used)) static int FUNC4 (struct saa7146_dev* dev)
{
	struct budget *budget = (struct budget*) dev->ext_priv;
	int err;

	if (budget->dvb_frontend) {
		FUNC1(budget->dvb_frontend);
		FUNC0(budget->dvb_frontend);
	}

	err = FUNC3 (budget);

	FUNC2 (budget);
	dev->ext_priv = NULL;

	return err;
}