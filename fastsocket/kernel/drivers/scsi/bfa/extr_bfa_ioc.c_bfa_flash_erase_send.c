
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfi_flash_erase_req_s {int mh; int instance; int type; } ;
struct TYPE_2__ {scalar_t__ msg; } ;
struct bfa_flash_s {TYPE_1__ mb; int ioc; int instance; int type; } ;


 int BFI_FLASH_H2I_ERASE_REQ ;
 int BFI_MC_FLASH ;
 int be32_to_cpu (int ) ;
 int bfa_ioc_mbox_queue (int ,TYPE_1__*) ;
 int bfa_ioc_portid (int ) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;

__attribute__((used)) static void
bfa_flash_erase_send(void *cbarg)
{
 struct bfa_flash_s *flash = cbarg;
 struct bfi_flash_erase_req_s *msg =
   (struct bfi_flash_erase_req_s *) flash->mb.msg;

 msg->type = be32_to_cpu(flash->type);
 msg->instance = flash->instance;
 bfi_h2i_set(msg->mh, BFI_MC_FLASH, BFI_FLASH_H2I_ERASE_REQ,
   bfa_ioc_portid(flash->ioc));
 bfa_ioc_mbox_queue(flash->ioc, &flash->mb);
}
