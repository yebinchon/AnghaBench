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
struct saa7134_dev {int /*<<< orphan*/  ctl_volume; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7134_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct saa7134_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * tvnorms ; 
 int /*<<< orphan*/  FUNC3 (struct saa7134_dev*,int /*<<< orphan*/ ) ; 

int FUNC4(struct saa7134_dev *dev)
{
	/* init video hw */
	FUNC2(dev,&tvnorms[0]);
	FUNC3(dev,0);
	FUNC0(dev);
	FUNC1(dev,dev->ctl_volume);
	return 0;
}