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
struct priv {size_t cardno; } ;
struct TYPE_2__ {int config; } ;

/* Variables and functions */
 short CSR0 ; 
 int CSR0_CLRALL ; 
 int CSR0_STOP ; 
 scalar_t__ L_ADDRREG ; 
 scalar_t__ L_BUSIF ; 
 scalar_t__ PORT ; 
 TYPE_1__* cards ; 
 int csr80 ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ isa0 ; 
 scalar_t__ isa1 ; 
 int /*<<< orphan*/  FUNC1 (short,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct priv *p)
{
	FUNC2(CSR0_STOP | CSR0_CLRALL,CSR0); /* STOP */

	if( !(cards[p->cardno].config & 0x02) )
		return;

	FUNC1(80,PORT+L_ADDRREG);
	if(FUNC0(PORT+L_ADDRREG) != 80)
		return;

	FUNC2( (csr80 & 0x3fff) ,80); /* FIFO watermarks */
	FUNC1(0,PORT+L_ADDRREG);
	FUNC1((short)isa0,PORT+L_BUSIF); /* write ISA 0: DMA_R : isa0 * 50ns */
	FUNC1(1,PORT+L_ADDRREG);
	FUNC1((short)isa1,PORT+L_BUSIF); /* write ISA 1: DMA_W : isa1 * 50ns	*/

	FUNC1(CSR0,PORT+L_ADDRREG);	/* switch back to CSR0 */
}