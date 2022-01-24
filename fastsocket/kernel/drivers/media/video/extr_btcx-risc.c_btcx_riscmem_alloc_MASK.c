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
struct pci_dev {int dummy; } ;
struct btcx_riscmem {unsigned int size; int /*<<< orphan*/ * cpu; scalar_t__ dma; } ;
typedef  scalar_t__ dma_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,struct btcx_riscmem*) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  memcnt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/ * FUNC2 (struct pci_dev*,unsigned int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,unsigned int) ; 

int FUNC4(struct pci_dev *pci,
		       struct btcx_riscmem *risc,
		       unsigned int size)
{
	__le32 *cpu;
	dma_addr_t dma = 0;

	if (NULL != risc->cpu && risc->size < size)
		FUNC0(pci,risc);
	if (NULL == risc->cpu) {
		cpu = FUNC2(pci, size, &dma);
		if (NULL == cpu)
			return -ENOMEM;
		risc->cpu  = cpu;
		risc->dma  = dma;
		risc->size = size;
		if (debug) {
			memcnt++;
			FUNC3("btcx: riscmem alloc [%d] dma=%lx cpu=%p size=%d\n",
			       memcnt, (unsigned long)dma, cpu, size);
		}
	}
	FUNC1(risc->cpu,0,risc->size);
	return 0;
}