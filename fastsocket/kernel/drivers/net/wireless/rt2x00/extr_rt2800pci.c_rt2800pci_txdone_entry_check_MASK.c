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
struct queue_entry {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  TXWI_W1_WIRELESS_CLI_ID ; 
 int /*<<< orphan*/  TX_STA_FIFO_WCID ; 
 int /*<<< orphan*/ * FUNC0 (struct queue_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct queue_entry *entry, u32 status)
{
	__le32 *txwi;
	u32 word;
	int wcid, tx_wcid;

	wcid = FUNC2(status, TX_STA_FIFO_WCID);

	txwi = FUNC0(entry);
	FUNC1(txwi, 1, &word);
	tx_wcid = FUNC2(word, TXWI_W1_WIRELESS_CLI_ID);

	return (tx_wcid == wcid);
}