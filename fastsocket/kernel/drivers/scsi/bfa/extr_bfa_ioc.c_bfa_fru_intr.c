
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int msg_id; } ;
struct bfi_mbmsg_s {TYPE_1__ mh; } ;
struct bfi_fru_rsp_s {int length; int status; } ;
struct bfa_fru_s {int residue; int status; int offset; int ubuf; int cbarg; int (* cbfn ) (int ,int) ;int op_busy; int dbuf_kva; } ;


 int BFA_STATUS_OK ;
 int BFI_FRUVPD_H2I_READ_REQ ;
 int BFI_FRUVPD_H2I_WRITE_REQ ;


 int BFI_TFRU_H2I_READ_REQ ;
 int BFI_TFRU_H2I_WRITE_REQ ;


 int WARN_ON (int) ;
 int be32_to_cpu (int ) ;
 int bfa_fru_read_send (struct bfa_fru_s*,int ) ;
 int bfa_fru_write_send (struct bfa_fru_s*,int ) ;
 int bfa_trc (struct bfa_fru_s*,int) ;
 int memcpy (int,int ,int) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;
 int stub3 (int ,int) ;

void
bfa_fru_intr(void *fruarg, struct bfi_mbmsg_s *msg)
{
 struct bfa_fru_s *fru = fruarg;
 struct bfi_fru_rsp_s *rsp = (struct bfi_fru_rsp_s *)msg;
 u32 status;

 bfa_trc(fru, msg->mh.msg_id);

 if (!fru->op_busy) {



  bfa_trc(fru, 0x9999);
  return;
 }

 switch (msg->mh.msg_id) {
 case 130:
 case 128:
  status = be32_to_cpu(rsp->status);
  bfa_trc(fru, status);

  if (status != BFA_STATUS_OK || fru->residue == 0) {
   fru->status = status;
   fru->op_busy = 0;
   if (fru->cbfn)
    fru->cbfn(fru->cbarg, fru->status);
  } else {
   bfa_trc(fru, fru->offset);
   if (msg->mh.msg_id == 130)
    bfa_fru_write_send(fru,
     BFI_FRUVPD_H2I_WRITE_REQ);
   else
    bfa_fru_write_send(fru,
     BFI_TFRU_H2I_WRITE_REQ);
  }
  break;
 case 131:
 case 129:
  status = be32_to_cpu(rsp->status);
  bfa_trc(fru, status);

  if (status != BFA_STATUS_OK) {
   fru->status = status;
   fru->op_busy = 0;
   if (fru->cbfn)
    fru->cbfn(fru->cbarg, fru->status);
  } else {
   u32 len = be32_to_cpu(rsp->length);

   bfa_trc(fru, fru->offset);
   bfa_trc(fru, len);

   memcpy(fru->ubuf + fru->offset, fru->dbuf_kva, len);
   fru->residue -= len;
   fru->offset += len;

   if (fru->residue == 0) {
    fru->status = status;
    fru->op_busy = 0;
    if (fru->cbfn)
     fru->cbfn(fru->cbarg, fru->status);
   } else {
    if (msg->mh.msg_id == 131)
     bfa_fru_read_send(fru,
      BFI_FRUVPD_H2I_READ_REQ);
    else
     bfa_fru_read_send(fru,
      BFI_TFRU_H2I_READ_REQ);
   }
  }
  break;
 default:
  WARN_ON(1);
 }
}
