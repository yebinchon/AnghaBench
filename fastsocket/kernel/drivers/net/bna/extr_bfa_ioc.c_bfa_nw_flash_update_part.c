
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bfa_flash {int op_busy; int type; int residue; int addr_off; void* ubuf; scalar_t__ offset; int instance; void* cbarg; int cbfn; int ioc; } ;
typedef enum bfa_status { ____Placeholder_bfa_status } bfa_status ;
typedef int bfa_cb_flash ;


 int BFA_FLASH_PART_MFG ;
 int BFA_STATUS_DEVBUSY ;
 int BFA_STATUS_EINVAL ;
 int BFA_STATUS_FLASH_BAD_LEN ;
 int BFA_STATUS_IOC_NON_OP ;
 int BFA_STATUS_OK ;
 int bfa_flash_write_send (struct bfa_flash*) ;
 int bfa_nw_ioc_is_operational (int ) ;

enum bfa_status
bfa_nw_flash_update_part(struct bfa_flash *flash, u32 type, u8 instance,
    void *buf, u32 len, u32 offset,
    bfa_cb_flash cbfn, void *cbarg)
{
 if (!bfa_nw_ioc_is_operational(flash->ioc))
  return BFA_STATUS_IOC_NON_OP;




 if (!len || (len & 0x03))
  return BFA_STATUS_FLASH_BAD_LEN;

 if (type == BFA_FLASH_PART_MFG)
  return BFA_STATUS_EINVAL;

 if (flash->op_busy)
  return BFA_STATUS_DEVBUSY;

 flash->op_busy = 1;
 flash->cbfn = cbfn;
 flash->cbarg = cbarg;
 flash->type = type;
 flash->instance = instance;
 flash->residue = len;
 flash->offset = 0;
 flash->addr_off = offset;
 flash->ubuf = buf;

 bfa_flash_write_send(flash);

 return BFA_STATUS_OK;
}
