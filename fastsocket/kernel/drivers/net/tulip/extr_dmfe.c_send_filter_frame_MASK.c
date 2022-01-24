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
typedef  int /*<<< orphan*/  u32 ;
typedef  void* u16 ;
struct tx_desc {void* tdes0; void* tdes1; struct tx_desc* next_tx_desc; scalar_t__ tx_buf_ptr; } ;
struct dmfe_board_info {int cr6_data; int /*<<< orphan*/  tx_queue_cnt; int /*<<< orphan*/  tx_packet_cnt; struct tx_desc* tx_insert_ptr; } ;
struct dev_mc_list {scalar_t__ dmi_addr; struct dev_mc_list* next; } ;
struct DEVICE {int /*<<< orphan*/  trans_start; scalar_t__ base_addr; struct dev_mc_list* mc_list; scalar_t__ dev_addr; } ;

/* Variables and functions */
 scalar_t__ DCR1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  jiffies ; 
 struct dmfe_board_info* FUNC2 (struct DEVICE*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct DEVICE *dev, int mc_cnt)
{
	struct dmfe_board_info *db = FUNC2(dev);
	struct dev_mc_list *mcptr;
	struct tx_desc *txptr;
	u16 * addrptr;
	u32 * suptr;
	int i;

	FUNC0(0, "send_filter_frame()", 0);

	txptr = db->tx_insert_ptr;
	suptr = (u32 *) txptr->tx_buf_ptr;

	/* Node address */
	addrptr = (u16 *) dev->dev_addr;
	*suptr++ = addrptr[0];
	*suptr++ = addrptr[1];
	*suptr++ = addrptr[2];

	/* broadcast address */
	*suptr++ = 0xffff;
	*suptr++ = 0xffff;
	*suptr++ = 0xffff;

	/* fit the multicast address */
	for (mcptr = dev->mc_list, i = 0; i < mc_cnt; i++, mcptr = mcptr->next) {
		addrptr = (u16 *) mcptr->dmi_addr;
		*suptr++ = addrptr[0];
		*suptr++ = addrptr[1];
		*suptr++ = addrptr[2];
	}

	for (; i<14; i++) {
		*suptr++ = 0xffff;
		*suptr++ = 0xffff;
		*suptr++ = 0xffff;
	}

	/* prepare the setup frame */
	db->tx_insert_ptr = txptr->next_tx_desc;
	txptr->tdes1 = FUNC1(0x890000c0);

	/* Resource Check and Send the setup packet */
	if (!db->tx_packet_cnt) {
		/* Resource Empty */
		db->tx_packet_cnt++;
		txptr->tdes0 = FUNC1(0x80000000);
		FUNC4(db->cr6_data | 0x2000, dev->base_addr);
		FUNC3(0x1, dev->base_addr + DCR1);	/* Issue Tx polling */
		FUNC4(db->cr6_data, dev->base_addr);
		dev->trans_start = jiffies;
	} else
		db->tx_queue_cnt++;	/* Put in TX queue */
}