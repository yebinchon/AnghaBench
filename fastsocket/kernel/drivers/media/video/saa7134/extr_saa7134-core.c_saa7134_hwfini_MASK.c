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
struct saa7134_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct saa7134_dev*) ; 

__attribute__((used)) static int FUNC6(struct saa7134_dev *dev)
{
	FUNC1("hwfini\n");

	if (FUNC0(dev))
		FUNC3(dev);
	FUNC2(dev);
	FUNC5(dev);
	FUNC4(dev);
	return 0;
}