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
struct saa7134_dmasound {struct saa7134_dev* priv_data; } ;
struct saa7134_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SAA7134_IRQ_REPORT ; 
 unsigned long SAA7134_IRQ_REPORT_DONE_RA3 ; 
 int /*<<< orphan*/  SAA7134_IRQ_STATUS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct saa7134_dev*,unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct saa7134_dmasound *dmasound = dev_id;
	struct saa7134_dev *dev = dmasound->priv_data;

	unsigned long report, status;
	int loop, handled = 0;

	for (loop = 0; loop < 10; loop++) {
		report = FUNC3(SAA7134_IRQ_REPORT);
		status = FUNC3(SAA7134_IRQ_STATUS);

		if (report & SAA7134_IRQ_REPORT_DONE_RA3) {
			handled = 1;
			FUNC4(SAA7134_IRQ_REPORT,
				   SAA7134_IRQ_REPORT_DONE_RA3);
			FUNC2(dev, status);
		} else {
			goto out;
		}
	}

	if (loop == 10) {
		FUNC1("error! looping IRQ!");
	}

out:
	return FUNC0(handled);
}