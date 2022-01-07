
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct queue_entry {int dummy; } ;
typedef int __le32 ;


 int TXWI_W1_WIRELESS_CLI_ID ;
 int TX_STA_FIFO_WCID ;
 int * rt2800_drv_get_txwi (struct queue_entry*) ;
 int rt2x00_desc_read (int *,int,int *) ;
 int rt2x00_get_field32 (int ,int ) ;

__attribute__((used)) static bool rt2800pci_txdone_entry_check(struct queue_entry *entry, u32 status)
{
 __le32 *txwi;
 u32 word;
 int wcid, tx_wcid;

 wcid = rt2x00_get_field32(status, TX_STA_FIFO_WCID);

 txwi = rt2800_drv_get_txwi(entry);
 rt2x00_desc_read(txwi, 1, &word);
 tx_wcid = rt2x00_get_field32(word, TXWI_W1_WIRELESS_CLI_ID);

 return (tx_wcid == wcid);
}
