
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct bfi_flash_read_req_s {int alen; int mh; void* length; void* offset; int instance; void* type; } ;
struct TYPE_2__ {scalar_t__ msg; } ;
struct bfa_flash_s {scalar_t__ residue; TYPE_1__ mb; int ioc; int dbuf_pa; scalar_t__ offset; scalar_t__ addr_off; int instance; scalar_t__ type; } ;


 scalar_t__ BFA_FLASH_DMA_BUF_SZ ;
 int BFI_FLASH_H2I_READ_REQ ;
 int BFI_MC_FLASH ;
 void* be32_to_cpu (scalar_t__) ;
 int bfa_alen_set (int *,scalar_t__,int ) ;
 int bfa_ioc_mbox_queue (int ,TYPE_1__*) ;
 int bfa_ioc_portid (int ) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;

__attribute__((used)) static void
bfa_flash_read_send(void *cbarg)
{
 struct bfa_flash_s *flash = cbarg;
 struct bfi_flash_read_req_s *msg =
   (struct bfi_flash_read_req_s *) flash->mb.msg;
 u32 len;

 msg->type = be32_to_cpu(flash->type);
 msg->instance = flash->instance;
 msg->offset = be32_to_cpu(flash->addr_off + flash->offset);
 len = (flash->residue < BFA_FLASH_DMA_BUF_SZ) ?
   flash->residue : BFA_FLASH_DMA_BUF_SZ;
 msg->length = be32_to_cpu(len);
 bfi_h2i_set(msg->mh, BFI_MC_FLASH, BFI_FLASH_H2I_READ_REQ,
  bfa_ioc_portid(flash->ioc));
 bfa_alen_set(&msg->alen, len, flash->dbuf_pa);
 bfa_ioc_mbox_queue(flash->ioc, &flash->mb);
}
