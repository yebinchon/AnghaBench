
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct bfi_phy_write_req_s {int last; int alen; int mh; void* length; void* offset; int instance; } ;
struct TYPE_2__ {scalar_t__ msg; } ;
struct bfa_phy_s {int addr_off; int offset; scalar_t__ residue; int ubuf; TYPE_1__ mb; int ioc; scalar_t__ dbuf_kva; int dbuf_pa; int instance; } ;


 scalar_t__ BFA_PHY_DMA_BUF_SZ ;
 int BFI_MC_PHY ;
 int BFI_PHY_H2I_WRITE_REQ ;
 int bfa_alen_set (int *,int,int ) ;
 int bfa_ioc_mbox_queue (int ,TYPE_1__*) ;
 int bfa_ioc_portid (int ) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;
 int cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int) ;

__attribute__((used)) static void
bfa_phy_write_send(void *cbarg)
{
 struct bfa_phy_s *phy = cbarg;
 struct bfi_phy_write_req_s *msg =
   (struct bfi_phy_write_req_s *) phy->mb.msg;
 u32 len;
 u16 *buf, *dbuf;
 int i, sz;

 msg->instance = phy->instance;
 msg->offset = cpu_to_be32(phy->addr_off + phy->offset);
 len = (phy->residue < BFA_PHY_DMA_BUF_SZ) ?
   phy->residue : BFA_PHY_DMA_BUF_SZ;
 msg->length = cpu_to_be32(len);


 msg->last = (len == phy->residue) ? 1 : 0;

 bfi_h2i_set(msg->mh, BFI_MC_PHY, BFI_PHY_H2I_WRITE_REQ,
  bfa_ioc_portid(phy->ioc));
 bfa_alen_set(&msg->alen, len, phy->dbuf_pa);

 buf = (u16 *) (phy->ubuf + phy->offset);
 dbuf = (u16 *)phy->dbuf_kva;
 sz = len >> 1;
 for (i = 0; i < sz; i++)
  buf[i] = cpu_to_be16(dbuf[i]);

 bfa_ioc_mbox_queue(phy->ioc, &phy->mb);

 phy->residue -= len;
 phy->offset += len;
}
