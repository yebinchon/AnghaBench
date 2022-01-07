
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {TYPE_1__* rx_skb; int err_crc; int err_rx; } ;
struct isac_hw {TYPE_2__ dch; int name; } ;
struct TYPE_4__ {int len; } ;


 int ISACX_CMDRD ;
 int ISACX_CMDRD_RMC ;
 int ISACX_RBCLD ;
 int ISACX_RSTAD ;
 int ISACX_RSTAD_CRC ;
 int ISACX_RSTAD_RAB ;
 int ISACX_RSTAD_RDO ;
 int ISACX_RSTAD_VFR ;
 int ReadISAC (struct isac_hw*,int ) ;
 int WriteISAC (struct isac_hw*,int ,int ) ;
 int dev_kfree_skb (TYPE_1__*) ;
 int isac_empty_fifo (struct isac_hw*,int) ;
 int pr_debug (char*,int ,int) ;
 int recv_Dchannel (TYPE_2__*) ;
 int skb_trim (TYPE_1__*,int) ;

__attribute__((used)) static void
isacsx_rme_irq(struct isac_hw *isac)
{
 int count;
 u8 val;

 val = ReadISAC(isac, ISACX_RSTAD);
 if ((val & (ISACX_RSTAD_VFR |
      ISACX_RSTAD_RDO |
      ISACX_RSTAD_CRC |
      ISACX_RSTAD_RAB))
     != (ISACX_RSTAD_VFR | ISACX_RSTAD_CRC)) {
  pr_debug("%s: RSTAD %#x, dropped\n", isac->name, val);






  WriteISAC(isac, ISACX_CMDRD, ISACX_CMDRD_RMC);
  if (isac->dch.rx_skb)
   dev_kfree_skb(isac->dch.rx_skb);
  isac->dch.rx_skb = ((void*)0);
 } else {
  count = ReadISAC(isac, ISACX_RBCLD) & 0x1f;
  if (count == 0)
   count = 32;
  isac_empty_fifo(isac, count);
  if (isac->dch.rx_skb) {
   skb_trim(isac->dch.rx_skb, isac->dch.rx_skb->len - 1);
   pr_debug("%s: dchannel received %d\n", isac->name,
    isac->dch.rx_skb->len);
   recv_Dchannel(&isac->dch);
  }
 }
}
