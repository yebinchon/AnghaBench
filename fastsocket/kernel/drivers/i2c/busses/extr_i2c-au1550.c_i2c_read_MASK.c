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
typedef  unsigned char u32 ;
struct i2c_au1550_data {scalar_t__ psc_base; } ;
struct TYPE_2__ {unsigned char psc_smbtxrx; } ;
typedef  TYPE_1__ psc_smb_t ;

/* Variables and functions */
 int EIO ; 
 unsigned char PSC_SMBTXRX_STP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct i2c_au1550_data*,unsigned char*) ; 
 scalar_t__ FUNC2 (struct i2c_au1550_data*) ; 

__attribute__((used)) static int
FUNC3(struct i2c_au1550_data *adap, unsigned char *buf,
		    unsigned int len)
{
	int	i;
	u32	data;
	volatile psc_smb_t	*sp;

	if (len == 0)
		return 0;

	/* A read is performed by stuffing the transmit fifo with
	 * zero bytes for timing, waiting for bytes to appear in the
	 * receive fifo, then reading the bytes.
	 */

	sp = (volatile psc_smb_t *)(adap->psc_base);

	i = 0;
	while (i < (len-1)) {
		sp->psc_smbtxrx = 0;
		FUNC0();
		if (FUNC1(adap, &data))
			return -EIO;

		buf[i] = data;
		i++;
	}

	/* The last byte has to indicate transfer done.
	*/
	sp->psc_smbtxrx = PSC_SMBTXRX_STP;
	FUNC0();
	if (FUNC2(adap))
		return -EIO;

	data = sp->psc_smbtxrx;
	FUNC0();
	buf[i] = data;
	return 0;
}