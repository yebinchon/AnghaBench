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
struct i2c_algo_iop3xx_data {scalar_t__ ioaddr; } ;

/* Variables and functions */
 scalar_t__ CR_OFFSET ; 
 unsigned long IOP3XX_ICR_MSTART ; 
 unsigned long IOP3XX_ICR_MSTOP ; 
 unsigned long IOP3XX_ICR_SCLEN ; 
 unsigned long IOP3XX_ICR_TBYTE ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void 
FUNC2(struct i2c_algo_iop3xx_data *iop3xx_adap)
{
	unsigned long cr = FUNC0(iop3xx_adap->ioaddr + CR_OFFSET);
	
	cr &= ~(IOP3XX_ICR_MSTART | IOP3XX_ICR_TBYTE | 
		IOP3XX_ICR_MSTOP | IOP3XX_ICR_SCLEN);

	FUNC1(cr, iop3xx_adap->ioaddr + CR_OFFSET);
}