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
struct device {int dummy; } ;

/* Variables and functions */
#define  ASSABET_BCR_IRDA_MD0 129 
#define  ASSABET_BCR_IRDA_MD1 128 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

__attribute__((used)) static int FUNC2(struct device *dev, unsigned int state)
{
	static unsigned int bcr_state[4] = {
		ASSABET_BCR_IRDA_MD0,
		ASSABET_BCR_IRDA_MD1|ASSABET_BCR_IRDA_MD0,
		ASSABET_BCR_IRDA_MD1,
		0
	};

	if (state < 4) {
		state = bcr_state[state];
		FUNC0(state ^ (ASSABET_BCR_IRDA_MD1|
					   ASSABET_BCR_IRDA_MD0));
		FUNC1(state);
	}
	return 0;
}