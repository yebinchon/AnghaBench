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
struct i2c_msg {scalar_t__ addr; } ;
struct i2c_algo_iop3xx_data {scalar_t__ ioaddr; } ;

/* Variables and functions */
 scalar_t__ CR_OFFSET ; 
 scalar_t__ DBR_OFFSET ; 
 int EBUSY ; 
 unsigned long IOP3XX_ICR_MSTART ; 
 unsigned long IOP3XX_ICR_MSTOP ; 
 unsigned long IOP3XX_ICR_NACK ; 
 unsigned long IOP3XX_ICR_TBYTE ; 
 scalar_t__ MYSAR ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 
 unsigned long FUNC2 (struct i2c_msg*) ; 
 int FUNC3 (struct i2c_algo_iop3xx_data*,int*) ; 

__attribute__((used)) static int 
FUNC4(struct i2c_algo_iop3xx_data *iop3xx_adap, 
				struct i2c_msg* msg)
{
	unsigned long cr = FUNC0(iop3xx_adap->ioaddr + CR_OFFSET);
	int status;
	int rc;

	/* avoid writing to my slave address (hangs on 80331),
	 * forbidden in Intel developer manual
	 */
	if (msg->addr == MYSAR) {
		return -EBUSY;
	}

	FUNC1(FUNC2(msg), iop3xx_adap->ioaddr + DBR_OFFSET);
	
	cr &= ~(IOP3XX_ICR_MSTOP | IOP3XX_ICR_NACK);
	cr |= IOP3XX_ICR_MSTART | IOP3XX_ICR_TBYTE;

	FUNC1(cr, iop3xx_adap->ioaddr + CR_OFFSET);
	rc = FUNC3(iop3xx_adap, &status);

	return rc;
}