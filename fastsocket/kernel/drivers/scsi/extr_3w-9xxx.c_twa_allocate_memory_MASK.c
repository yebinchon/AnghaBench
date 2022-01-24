#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {unsigned long** generic_buffer_virt; int /*<<< orphan*/ * generic_buffer_phys; int /*<<< orphan*/ ** command_packet_virt; int /*<<< orphan*/ * command_packet_phys; int /*<<< orphan*/  tw_pci_dev; int /*<<< orphan*/  host; } ;
typedef  TYPE_1__ TW_Device_Extension ;
typedef  int /*<<< orphan*/  TW_Command_Full ;

/* Variables and functions */
 unsigned long TW_ALIGNMENT_9000 ; 
 int /*<<< orphan*/  TW_DRIVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int TW_Q_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,int /*<<< orphan*/ ,int) ; 
 unsigned long* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,unsigned long*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(TW_Device_Extension *tw_dev, int size, int which)
{
	int i;
	dma_addr_t dma_handle;
	unsigned long *cpu_addr;
	int retval = 1;

	cpu_addr = FUNC2(tw_dev->tw_pci_dev, size*TW_Q_LENGTH, &dma_handle);
	if (!cpu_addr) {
		FUNC0(tw_dev->host, TW_DRIVER, 0x5, "Memory allocation failed");
		goto out;
	}

	if ((unsigned long)cpu_addr % (TW_ALIGNMENT_9000)) {
		FUNC0(tw_dev->host, TW_DRIVER, 0x6, "Failed to allocate correctly aligned memory");
		FUNC3(tw_dev->tw_pci_dev, size*TW_Q_LENGTH, cpu_addr, dma_handle);
		goto out;
	}

	FUNC1(cpu_addr, 0, size*TW_Q_LENGTH);

	for (i = 0; i < TW_Q_LENGTH; i++) {
		switch(which) {
		case 0:
			tw_dev->command_packet_phys[i] = dma_handle+(i*size);
			tw_dev->command_packet_virt[i] = (TW_Command_Full *)((unsigned char *)cpu_addr + (i*size));
			break;
		case 1:
			tw_dev->generic_buffer_phys[i] = dma_handle+(i*size);
			tw_dev->generic_buffer_virt[i] = (unsigned long *)((unsigned char *)cpu_addr + (i*size));
			break;
		}
	}
	retval = 0;
out:
	return retval;
}