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
struct input_dev {int dummy; } ;
struct gameport {int dummy; } ;
struct cobra {int exists; struct input_dev** dev; int /*<<< orphan*/  bads; int /*<<< orphan*/  reads; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 scalar_t__* cobra_btn ; 
 int FUNC0 (struct gameport*,unsigned int*) ; 
 struct cobra* FUNC1 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 

__attribute__((used)) static void FUNC5(struct gameport *gameport)
{
	struct cobra *cobra = FUNC1(gameport);
	struct input_dev *dev;
	unsigned int data[2];
	int i, j, r;

	cobra->reads++;

	if ((r = FUNC0(gameport, data)) != cobra->exists) {
		cobra->bads++;
		return;
	}

	for (i = 0; i < 2; i++)
		if (cobra->exists & r & (1 << i)) {

			dev = cobra->dev[i];

			FUNC2(dev, ABS_X, ((data[i] >> 4) & 1) - ((data[i] >> 3) & 1));
			FUNC2(dev, ABS_Y, ((data[i] >> 2) & 1) - ((data[i] >> 1) & 1));

			for (j = 0; cobra_btn[j]; j++)
				FUNC3(dev, cobra_btn[j], data[i] & (0x20 << j));

			FUNC4(dev);

		}
}