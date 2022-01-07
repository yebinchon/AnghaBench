
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct bfi_flash_query_req {int alen; int mh; } ;
struct bfa_flash_attr {int dummy; } ;
struct TYPE_2__ {scalar_t__ msg; } ;
struct bfa_flash {int op_busy; TYPE_1__ mb; int ioc; int dbuf_pa; int * ubuf; void* cbarg; int cbfn; } ;
typedef enum bfa_status { ____Placeholder_bfa_status } bfa_status ;
typedef int bfa_cb_flash ;


 int BFA_STATUS_DEVBUSY ;
 int BFA_STATUS_IOC_NON_OP ;
 int BFA_STATUS_OK ;
 int BFI_FLASH_H2I_QUERY_REQ ;
 int BFI_MC_FLASH ;
 int bfa_alen_set (int *,int,int ) ;
 int bfa_ioc_portid (int ) ;
 int bfa_nw_ioc_is_operational (int ) ;
 int bfa_nw_ioc_mbox_queue (int ,TYPE_1__*,int *,int *) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;

enum bfa_status
bfa_nw_flash_get_attr(struct bfa_flash *flash, struct bfa_flash_attr *attr,
        bfa_cb_flash cbfn, void *cbarg)
{
 struct bfi_flash_query_req *msg =
   (struct bfi_flash_query_req *) flash->mb.msg;

 if (!bfa_nw_ioc_is_operational(flash->ioc))
  return BFA_STATUS_IOC_NON_OP;

 if (flash->op_busy)
  return BFA_STATUS_DEVBUSY;

 flash->op_busy = 1;
 flash->cbfn = cbfn;
 flash->cbarg = cbarg;
 flash->ubuf = (u8 *) attr;

 bfi_h2i_set(msg->mh, BFI_MC_FLASH, BFI_FLASH_H2I_QUERY_REQ,
      bfa_ioc_portid(flash->ioc));
 bfa_alen_set(&msg->alen, sizeof(struct bfa_flash_attr), flash->dbuf_pa);
 bfa_nw_ioc_mbox_queue(flash->ioc, &flash->mb, ((void*)0), ((void*)0));

 return BFA_STATUS_OK;
}
