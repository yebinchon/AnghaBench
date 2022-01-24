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
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct btcx_riscmem {int dma; int /*<<< orphan*/ * cpu; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int RISC_IRQ2 ; 
 int RISC_JUMP ; 
 int RISC_WRITECR ; 
 int FUNC0 (struct pci_dev*,struct btcx_riscmem*,int) ; 
 void* FUNC1 (int) ; 

int FUNC2(struct pci_dev *pci, struct btcx_riscmem *risc,
				u32 reg, u32 mask, u32 value)
{
	__le32 *rp;
	int rc;

	rc = FUNC0(pci, risc, 4*16);
	if (rc < 0)
		return rc;

	/* write risc instructions */
	rp = risc->cpu;
	*(rp++) = FUNC1(RISC_WRITECR  | RISC_IRQ2);
	*(rp++) = FUNC1(reg);
	*(rp++) = FUNC1(value);
	*(rp++) = FUNC1(mask);
	*(rp++) = FUNC1(RISC_JUMP);
	*(rp++) = FUNC1(risc->dma);
	*(rp++) = FUNC1(0); /* bits 63-32 */
	return 0;
}