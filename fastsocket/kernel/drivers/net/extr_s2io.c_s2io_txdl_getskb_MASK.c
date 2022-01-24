#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  size_t u16 ;
struct sk_buff {int dummy; } ;
struct s2io_nic {int /*<<< orphan*/  pdev; } ;
struct fifo_info {int max_txds; scalar_t__ ufo_in_band_v; struct s2io_nic* nic; } ;
struct TxD {scalar_t__ Host_Control; scalar_t__ Buffer_Pointer; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {size_t nr_frags; TYPE_1__* frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct TxD*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*) ; 
 TYPE_2__* FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct fifo_info *fifo_data,
					struct TxD *txdlp, int get_off)
{
	struct s2io_nic *nic = fifo_data->nic;
	struct sk_buff *skb;
	struct TxD *txds;
	u16 j, frg_cnt;

	txds = txdlp;
	if (txds->Host_Control == (u64)(long)fifo_data->ufo_in_band_v) {
		FUNC2(nic->pdev, (dma_addr_t)txds->Buffer_Pointer,
				 sizeof(u64), PCI_DMA_TODEVICE);
		txds++;
	}

	skb = (struct sk_buff *)((unsigned long)txds->Host_Control);
	if (!skb) {
		FUNC0(txdlp, 0, (sizeof(struct TxD) * fifo_data->max_txds));
		return NULL;
	}
	FUNC2(nic->pdev, (dma_addr_t)txds->Buffer_Pointer,
			 FUNC3(skb), PCI_DMA_TODEVICE);
	frg_cnt = FUNC4(skb)->nr_frags;
	if (frg_cnt) {
		txds++;
		for (j = 0; j < frg_cnt; j++, txds++) {
			skb_frag_t *frag = &FUNC4(skb)->frags[j];
			if (!txds->Buffer_Pointer)
				break;
			FUNC1(nic->pdev,
				       (dma_addr_t)txds->Buffer_Pointer,
				       frag->size, PCI_DMA_TODEVICE);
		}
	}
	FUNC0(txdlp, 0, (sizeof(struct TxD) * fifo_data->max_txds));
	return skb;
}