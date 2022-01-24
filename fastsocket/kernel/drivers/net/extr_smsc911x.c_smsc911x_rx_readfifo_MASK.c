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
struct TYPE_2__ {int flags; } ;
struct smsc911x_data {TYPE_1__ config; scalar_t__ ioaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ RX_DATA_FIFO ; 
 int SMSC911X_SWAP_FIFO ; 
 int SMSC911X_USE_16BIT ; 
 int SMSC911X_USE_32BIT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct smsc911x_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC4(struct smsc911x_data *pdata, unsigned int *buf,
		     unsigned int wordcount)
{
	if (pdata->config.flags & SMSC911X_SWAP_FIFO) {
		while (wordcount--)
			*buf++ = FUNC3(FUNC2(pdata, RX_DATA_FIFO));
		return;
	}

	if (pdata->config.flags & SMSC911X_USE_32BIT) {
		FUNC1(pdata->ioaddr + RX_DATA_FIFO, buf, wordcount);
		return;
	}

	if (pdata->config.flags & SMSC911X_USE_16BIT) {
		while (wordcount--)
			*buf++ = FUNC2(pdata, RX_DATA_FIFO);
		return;
	}

	FUNC0();
}