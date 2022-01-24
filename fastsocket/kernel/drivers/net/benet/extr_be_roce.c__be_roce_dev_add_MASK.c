#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {scalar_t__ device; } ;
struct TYPE_9__ {int num_vectors; int /*<<< orphan*/ * vector_list; int /*<<< orphan*/  start_vector; } ;
struct be_dev_info {int /*<<< orphan*/  intr_mode; TYPE_4__ msix; int /*<<< orphan*/  dev_family; int /*<<< orphan*/  mac_addr; TYPE_2__* netdev; int /*<<< orphan*/  db_total_size; int /*<<< orphan*/  db_page_size; int /*<<< orphan*/  unmapped_db; int /*<<< orphan*/  db; struct pci_dev* pdev; scalar_t__ dpp_unmapped_len; scalar_t__ dpp_unmapped_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  total_size; int /*<<< orphan*/  size; int /*<<< orphan*/  io_addr; } ;
struct be_adapter {int num_msix_vec; int num_msix_roce_vec; int /*<<< orphan*/  ocrdma_dev; TYPE_3__* msix_entries; int /*<<< orphan*/  num_evt_qs; int /*<<< orphan*/  sli_family; TYPE_2__* netdev; TYPE_1__ roce_db; int /*<<< orphan*/  db; struct pci_dev* pdev; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* add ) (struct be_dev_info*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  vector; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BE_INTERRUPT_MODE_INTX ; 
 int /*<<< orphan*/  BE_INTERRUPT_MODE_MSIX ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MAX_MSIX_VECTORS ; 
 scalar_t__ OC_DEVICE_ID5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct be_adapter*) ; 
 TYPE_5__* ocrdma_drv ; 
 scalar_t__ FUNC3 (struct pci_dev*,int) ; 
 scalar_t__ FUNC4 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct be_dev_info*) ; 

__attribute__((used)) static void FUNC6(struct be_adapter *adapter)
{
	struct be_dev_info dev_info;
	int i, num_vec;
	struct pci_dev *pdev = adapter->pdev;

	if (!ocrdma_drv)
		return;
	if (pdev->device == OC_DEVICE_ID5) {
		/* only msix is supported on these devices */
		if (!FUNC2(adapter))
			return;
		/* DPP region address and length */
		dev_info.dpp_unmapped_addr = FUNC4(pdev, 2);
		dev_info.dpp_unmapped_len = FUNC3(pdev, 2);
	} else {
		dev_info.dpp_unmapped_addr = 0;
		dev_info.dpp_unmapped_len = 0;
	}
	dev_info.pdev = adapter->pdev;
	dev_info.db = adapter->db;
	dev_info.unmapped_db = adapter->roce_db.io_addr;
	dev_info.db_page_size = adapter->roce_db.size;
	dev_info.db_total_size = adapter->roce_db.total_size;
	dev_info.netdev = adapter->netdev;
	FUNC0(dev_info.mac_addr, adapter->netdev->dev_addr, ETH_ALEN);
	dev_info.dev_family = adapter->sli_family;
	if (FUNC2(adapter)) {
		/* provide all the vectors, so that EQ creation response
		 * can decide which one to use.
		 */
		num_vec = adapter->num_msix_vec + adapter->num_msix_roce_vec;
		dev_info.intr_mode = BE_INTERRUPT_MODE_MSIX;
		dev_info.msix.num_vectors = FUNC1(num_vec, MAX_MSIX_VECTORS);
		/* provide start index of the vector,
		 * so in case of linear usage,
		 * it can use the base as starting point.
		 */
		dev_info.msix.start_vector = adapter->num_evt_qs;
		for (i = 0; i < dev_info.msix.num_vectors; i++) {
			dev_info.msix.vector_list[i] =
			    adapter->msix_entries[i].vector;
		}
	} else {
		dev_info.msix.num_vectors = 0;
		dev_info.intr_mode = BE_INTERRUPT_MODE_INTX;
	}
	adapter->ocrdma_dev = ocrdma_drv->add(&dev_info);
}