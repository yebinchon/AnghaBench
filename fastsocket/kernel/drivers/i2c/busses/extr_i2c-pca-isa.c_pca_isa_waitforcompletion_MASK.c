#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned long timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_PCA_CON ; 
 int I2C_PCA_CON_SI ; 
 int irq ; 
 unsigned long jiffies ; 
 TYPE_1__ pca_isa_ops ; 
 int FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pca_wait ; 
 long FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 long FUNC3 (int /*<<< orphan*/ ,int,unsigned long) ; 

__attribute__((used)) static int FUNC4(void *pd)
{
	long ret = ~0;
	unsigned long timeout;

	if (irq > -1) {
		ret = FUNC3(pca_wait,
				FUNC0(pd, I2C_PCA_CON)
				& I2C_PCA_CON_SI, pca_isa_ops.timeout);
	} else {
		/* Do polling */
		timeout = jiffies + pca_isa_ops.timeout;
		while (((FUNC0(pd, I2C_PCA_CON)
				& I2C_PCA_CON_SI) == 0)
				&& (ret = FUNC1(jiffies, timeout)))
			FUNC2(100);
	}
	return ret > 0;
}