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
typedef  int u8 ;
struct saa7146_dev {int dummy; } ;
struct budget {struct saa7146_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct budget*,int) ; 
 int /*<<< orphan*/  SAA7146_GPIO_OUTHI ; 
 int /*<<< orphan*/  SAA7146_GPIO_OUTLO ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct budget*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7146_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6 (struct budget *budget, int len, u8 *msg, unsigned long burst)
{
	struct saa7146_dev *dev=budget->dev;
	int i;

	FUNC1(2, "budget: %p\n", budget);

	FUNC4(dev, 3, SAA7146_GPIO_OUTLO);
	FUNC2(16);

	for (i=0; i<len; i++)
		FUNC0(budget, msg[i]);

	FUNC2(16);

	if (burst!=-1) {
		if (burst)
			FUNC0(budget, 0xff);
		else {
			FUNC4(dev, 3, SAA7146_GPIO_OUTHI);
			FUNC2(12);
			FUNC5(500);
			FUNC4(dev, 3, SAA7146_GPIO_OUTLO);
		}
		FUNC3(20);
	}

	return 0;
}