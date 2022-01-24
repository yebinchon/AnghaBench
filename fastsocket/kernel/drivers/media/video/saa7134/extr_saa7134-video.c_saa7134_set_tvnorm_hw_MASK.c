#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct saa7134_dev {TYPE_1__* tvnorm; int /*<<< orphan*/  ctl_input; } ;
struct TYPE_4__ {scalar_t__ tv; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 TYPE_2__ FUNC0 (struct saa7134_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  s_std ; 
 int /*<<< orphan*/  FUNC1 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct saa7134_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct saa7134_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct saa7134_dev *dev)
{
	FUNC1(dev);

	if (FUNC0(dev, dev->ctl_input).tv)
		FUNC2(dev, core, s_std, dev->tvnorm->id);
	/* Set the correct norm for the saa6752hs. This function
	   does nothing if there is no saa6752hs. */
	FUNC3(dev, core, s_std, dev->tvnorm->id);
}