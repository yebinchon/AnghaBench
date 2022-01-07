
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ kva; } ;
struct bfa_msgq_rspq {int consumer_index; TYPE_1__ addr; int depth; } ;
struct bfa_msgq {struct bfa_msgq_rspq rspq; } ;


 int BFA_MSGQ_INDX_ADD (int,int,int ) ;
 int BFI_MSGQ_RSP_ENTRY_SIZE ;
 int memcpy (int *,int *,size_t) ;

void
bfa_msgq_rsp_copy(struct bfa_msgq *msgq, u8 *buf, size_t buf_len)
{
 struct bfa_msgq_rspq *rspq = &msgq->rspq;
 size_t len = buf_len;
 size_t to_copy;
 int ci;
 u8 *src, *dst;

 ci = rspq->consumer_index;
 src = (u8 *)rspq->addr.kva;
 src += (ci * BFI_MSGQ_RSP_ENTRY_SIZE);
 dst = buf;

 while (len) {
  to_copy = (len < BFI_MSGQ_RSP_ENTRY_SIZE) ?
    len : BFI_MSGQ_RSP_ENTRY_SIZE;
  memcpy(dst, src, to_copy);
  len -= to_copy;
  dst += BFI_MSGQ_RSP_ENTRY_SIZE;
  BFA_MSGQ_INDX_ADD(ci, 1, rspq->depth);
  src = (u8 *)rspq->addr.kva;
  src += (ci * BFI_MSGQ_RSP_ENTRY_SIZE);
 }
}
