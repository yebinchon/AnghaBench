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
struct rtl8169_private {TYPE_1__* pci_dev; } ;
struct RxDesc {int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct RxDesc*) ; 
 int /*<<< orphan*/  rx_buf_sz ; 

__attribute__((used)) static void FUNC4(struct rtl8169_private *tp,
				     void **data_buff, struct RxDesc *desc)
{
	FUNC0(&tp->pci_dev->dev, FUNC2(desc->addr), rx_buf_sz,
			 DMA_FROM_DEVICE);

	FUNC1(*data_buff);
	*data_buff = NULL;
	FUNC3(desc);
}