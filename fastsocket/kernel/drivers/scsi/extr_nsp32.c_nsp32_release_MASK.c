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
struct Scsi_Host {scalar_t__ n_io_port; scalar_t__ io_port; scalar_t__ irq; scalar_t__ hostdata; } ;
struct TYPE_3__ {scalar_t__ MmioAddress; int /*<<< orphan*/  sg_paddr; scalar_t__ sg_list; int /*<<< orphan*/  Pci; int /*<<< orphan*/  auto_paddr; scalar_t__ autoparam; } ;
typedef  TYPE_1__ nsp32_hw_data ;
typedef  int /*<<< orphan*/  nsp32_autoparam ;

/* Variables and functions */
 int NSP32_SG_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct Scsi_Host *host)
{
	nsp32_hw_data *data = (nsp32_hw_data *)host->hostdata;

	if (data->autoparam) {
		FUNC2(data->Pci, sizeof(nsp32_autoparam),
				    data->autoparam, data->auto_paddr);
	}

	if (data->sg_list) {
		FUNC2(data->Pci, NSP32_SG_TABLE_SIZE,
				    data->sg_list, data->sg_paddr);
	}

	if (host->irq) {
		FUNC0(host->irq, data);
	}

	if (host->io_port && host->n_io_port) {
		FUNC3(host->io_port, host->n_io_port);
	}

	if (data->MmioAddress) {
		FUNC1(data->MmioAddress);
	}

	return 0;
}