
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct nes_terminate_hdr {int layer_etype; void* error_code; int hdrct; } ;
struct TYPE_2__ {int* q2_vbase; } ;
struct nes_qp {int term_sq_flush_code; int term_rq_flush_code; TYPE_1__ hwqp; } ;


 int BAD_FRAME_OFFSET ;
 int DDP_CATASTROPHIC ;
 void* DDP_CATASTROPHIC_LOCAL ;
 int DDP_HDR_FLAG ;
 int DDP_LEN_FLAG ;
 int DDP_LLP ;
 void* DDP_TAGGED_BOUNDS ;
 int DDP_TAGGED_BUFFER ;
 void* DDP_TAGGED_INV_DDP_VER ;
 void* DDP_TAGGED_INV_STAG ;
 void* DDP_TAGGED_UNASSOC_STAG ;
 int DDP_UNTAGGED_BUFFER ;
 void* DDP_UNTAGGED_INV_DDP_VER ;
 void* DDP_UNTAGGED_INV_MO ;
 void* DDP_UNTAGGED_INV_MSN_NO_BUF ;
 void* DDP_UNTAGGED_INV_MSN_RANGE ;
 void* DDP_UNTAGGED_INV_QN ;
 void* DDP_UNTAGGED_INV_TOO_LONG ;
 int IB_WC_FATAL_ERR ;
 int IB_WC_GENERAL_ERR ;
 int IB_WC_LOC_LEN_ERR ;
 int IB_WC_LOC_PROT_ERR ;
 int IB_WC_LOC_QP_OP_ERR ;
 int IB_WC_REM_ACCESS_ERR ;
 int IB_WC_REM_OP_ERR ;



 int LAYER_DDP ;
 int LAYER_MPA ;
 int LAYER_RDMA ;
 void* MPA_CRC ;
 void* MPA_MARKER ;
 int NES_AEQE_INBOUND_RDMA ;
 int NES_AEQE_Q2_DATA_ETHERNET ;
 int NES_AEQE_Q2_DATA_MPA ;
 int NES_AEQE_Q2_DATA_WRITTEN ;
 int NES_AEQE_SQ ;
 void* RDMAP_ACCESS ;
 void* RDMAP_CANT_INV_STAG ;
 void* RDMAP_INV_BOUNDS ;
 void* RDMAP_INV_RDMAP_VER ;
 void* RDMAP_INV_STAG ;
 int RDMAP_REMOTE_OP ;
 int RDMAP_REMOTE_PROT ;
 void* RDMAP_TO_WRAP ;
 void* RDMAP_UNASSOC_STAG ;
 void* RDMAP_UNEXPECTED_OP ;
 void* RDMAP_UNSPECIFIED ;
 int RDMA_HDR_FLAG ;
 int RDMA_OPCODE_MASK ;
 int RDMA_READ_REQ_OPCODE ;
 scalar_t__ TERM_DDP_LEN_TAGGED ;
 scalar_t__ TERM_DDP_LEN_UNTAGGED ;
 scalar_t__ TERM_RDMA_LEN ;
 scalar_t__ be16_to_cpu (scalar_t__) ;
 int iwarp_opcode (struct nes_qp*,int) ;
 int* locate_mpa (int*,int) ;
 int memcpy (struct nes_terminate_hdr*,int*,int) ;
 int memset (struct nes_terminate_hdr*,int ,int) ;

__attribute__((used)) static int nes_bld_terminate_hdr(struct nes_qp *nesqp, u16 async_event_id, u32 aeq_info)
{
 u8 *pkt = nesqp->hwqp.q2_vbase + BAD_FRAME_OFFSET;
 u16 ddp_seg_len;
 int copy_len = 0;
 u8 is_tagged = 0;
 u8 flush_code = 0;
 struct nes_terminate_hdr *termhdr;

 termhdr = (struct nes_terminate_hdr *)nesqp->hwqp.q2_vbase;
 memset(termhdr, 0, 64);

 if (aeq_info & NES_AEQE_Q2_DATA_WRITTEN) {


  pkt = locate_mpa(pkt, aeq_info);
  ddp_seg_len = be16_to_cpu(*(u16 *)pkt);
  if (ddp_seg_len) {
   copy_len = 2;
   termhdr->hdrct = DDP_LEN_FLAG;
   if (pkt[2] & 0x80) {
    is_tagged = 1;
    if (ddp_seg_len >= TERM_DDP_LEN_TAGGED) {
     copy_len += TERM_DDP_LEN_TAGGED;
     termhdr->hdrct |= DDP_HDR_FLAG;
    }
   } else {
    if (ddp_seg_len >= TERM_DDP_LEN_UNTAGGED) {
     copy_len += TERM_DDP_LEN_UNTAGGED;
     termhdr->hdrct |= DDP_HDR_FLAG;
    }

    if (ddp_seg_len >= (TERM_DDP_LEN_UNTAGGED + TERM_RDMA_LEN)) {
     if ((pkt[3] & RDMA_OPCODE_MASK) == RDMA_READ_REQ_OPCODE) {
      copy_len += TERM_RDMA_LEN;
      termhdr->hdrct |= RDMA_HDR_FLAG;
     }
    }
   }
  }
 }

 switch (async_event_id) {
 case 144:
  switch (iwarp_opcode(nesqp, aeq_info)) {
  case 154:
   flush_code = IB_WC_LOC_PROT_ERR;
   termhdr->layer_etype = (LAYER_DDP << 4) | DDP_TAGGED_BUFFER;
   termhdr->error_code = DDP_TAGGED_INV_STAG;
   break;
  default:
   flush_code = IB_WC_REM_ACCESS_ERR;
   termhdr->layer_etype = (LAYER_RDMA << 4) | RDMAP_REMOTE_PROT;
   termhdr->error_code = RDMAP_INV_STAG;
  }
  break;
 case 147:
  flush_code = IB_WC_REM_ACCESS_ERR;
  termhdr->layer_etype = (LAYER_RDMA << 4) | RDMAP_REMOTE_PROT;
  termhdr->error_code = RDMAP_INV_STAG;
  break;
 case 152:
  flush_code = IB_WC_LOC_QP_OP_ERR;
  termhdr->layer_etype = (LAYER_DDP << 4) | DDP_UNTAGGED_BUFFER;
  termhdr->error_code = DDP_UNTAGGED_INV_QN;
  break;
 case 150:
 case 151:
  switch (iwarp_opcode(nesqp, aeq_info)) {
  case 156:
  case 155:
   flush_code = IB_WC_REM_OP_ERR;
   termhdr->layer_etype = (LAYER_RDMA << 4) | RDMAP_REMOTE_OP;
   termhdr->error_code = RDMAP_CANT_INV_STAG;
   break;
  default:
   flush_code = IB_WC_REM_ACCESS_ERR;
   termhdr->layer_etype = (LAYER_RDMA << 4) | RDMAP_REMOTE_PROT;
   termhdr->error_code = RDMAP_INV_STAG;
  }
  break;
 case 149:
  if (aeq_info & (NES_AEQE_Q2_DATA_ETHERNET | NES_AEQE_Q2_DATA_MPA)) {
   flush_code = IB_WC_LOC_PROT_ERR;
   termhdr->layer_etype = (LAYER_DDP << 4) | DDP_TAGGED_BUFFER;
   termhdr->error_code = DDP_TAGGED_BOUNDS;
  } else {
   flush_code = IB_WC_REM_ACCESS_ERR;
   termhdr->layer_etype = (LAYER_RDMA << 4) | RDMAP_REMOTE_PROT;
   termhdr->error_code = RDMAP_INV_BOUNDS;
  }
  break;
 case 146:
 case 148:
 case 130:
  flush_code = IB_WC_REM_ACCESS_ERR;
  termhdr->layer_etype = (LAYER_RDMA << 4) | RDMAP_REMOTE_PROT;
  termhdr->error_code = RDMAP_ACCESS;
  break;
 case 145:
  flush_code = IB_WC_REM_ACCESS_ERR;
  termhdr->layer_etype = (LAYER_RDMA << 4) | RDMAP_REMOTE_PROT;
  termhdr->error_code = RDMAP_TO_WRAP;
  break;
 case 153:
  switch (iwarp_opcode(nesqp, aeq_info)) {
  case 154:
   flush_code = IB_WC_LOC_PROT_ERR;
   termhdr->layer_etype = (LAYER_DDP << 4) | DDP_TAGGED_BUFFER;
   termhdr->error_code = DDP_TAGGED_UNASSOC_STAG;
   break;
  case 156:
  case 155:
   flush_code = IB_WC_REM_ACCESS_ERR;
   termhdr->layer_etype = (LAYER_RDMA << 4) | RDMAP_REMOTE_PROT;
   termhdr->error_code = RDMAP_CANT_INV_STAG;
   break;
  default:
   flush_code = IB_WC_REM_ACCESS_ERR;
   termhdr->layer_etype = (LAYER_RDMA << 4) | RDMAP_REMOTE_PROT;
   termhdr->error_code = RDMAP_UNASSOC_STAG;
  }
  break;
 case 134:
  flush_code = IB_WC_LOC_LEN_ERR;
  termhdr->layer_etype = (LAYER_MPA << 4) | DDP_LLP;
  termhdr->error_code = MPA_MARKER;
  break;
 case 133:
  flush_code = IB_WC_GENERAL_ERR;
  termhdr->layer_etype = (LAYER_MPA << 4) | DDP_LLP;
  termhdr->error_code = MPA_CRC;
  break;
 case 132:
 case 131:
  flush_code = IB_WC_LOC_LEN_ERR;
  termhdr->layer_etype = (LAYER_DDP << 4) | DDP_CATASTROPHIC;
  termhdr->error_code = DDP_CATASTROPHIC_LOCAL;
  break;
 case 141:
 case 140:
  flush_code = IB_WC_FATAL_ERR;
  termhdr->layer_etype = (LAYER_DDP << 4) | DDP_CATASTROPHIC;
  termhdr->error_code = DDP_CATASTROPHIC_LOCAL;
  break;
 case 143:
 case 142:
  flush_code = IB_WC_GENERAL_ERR;
  termhdr->layer_etype = (LAYER_DDP << 4) | DDP_UNTAGGED_BUFFER;
  termhdr->error_code = DDP_UNTAGGED_INV_MSN_RANGE;
  break;
 case 139:
  flush_code = IB_WC_LOC_LEN_ERR;
  termhdr->layer_etype = (LAYER_DDP << 4) | DDP_UNTAGGED_BUFFER;
  termhdr->error_code = DDP_UNTAGGED_INV_TOO_LONG;
  break;
 case 138:
  flush_code = IB_WC_GENERAL_ERR;
  if (is_tagged) {
   termhdr->layer_etype = (LAYER_DDP << 4) | DDP_TAGGED_BUFFER;
   termhdr->error_code = DDP_TAGGED_INV_DDP_VER;
  } else {
   termhdr->layer_etype = (LAYER_DDP << 4) | DDP_UNTAGGED_BUFFER;
   termhdr->error_code = DDP_UNTAGGED_INV_DDP_VER;
  }
  break;
 case 137:
  flush_code = IB_WC_GENERAL_ERR;
  termhdr->layer_etype = (LAYER_DDP << 4) | DDP_UNTAGGED_BUFFER;
  termhdr->error_code = DDP_UNTAGGED_INV_MO;
  break;
 case 136:
  flush_code = IB_WC_REM_OP_ERR;
  termhdr->layer_etype = (LAYER_DDP << 4) | DDP_UNTAGGED_BUFFER;
  termhdr->error_code = DDP_UNTAGGED_INV_MSN_NO_BUF;
  break;
 case 135:
  flush_code = IB_WC_GENERAL_ERR;
  termhdr->layer_etype = (LAYER_DDP << 4) | DDP_UNTAGGED_BUFFER;
  termhdr->error_code = DDP_UNTAGGED_INV_QN;
  break;
 case 129:
  flush_code = IB_WC_GENERAL_ERR;
  termhdr->layer_etype = (LAYER_RDMA << 4) | RDMAP_REMOTE_OP;
  termhdr->error_code = RDMAP_INV_RDMAP_VER;
  break;
 case 128:
  flush_code = IB_WC_LOC_QP_OP_ERR;
  termhdr->layer_etype = (LAYER_RDMA << 4) | RDMAP_REMOTE_OP;
  termhdr->error_code = RDMAP_UNEXPECTED_OP;
  break;
 default:
  flush_code = IB_WC_FATAL_ERR;
  termhdr->layer_etype = (LAYER_RDMA << 4) | RDMAP_REMOTE_OP;
  termhdr->error_code = RDMAP_UNSPECIFIED;
  break;
 }

 if (copy_len)
  memcpy(termhdr + 1, pkt, copy_len);

 if ((flush_code) && ((NES_AEQE_INBOUND_RDMA & aeq_info) == 0)) {
  if (aeq_info & NES_AEQE_SQ)
   nesqp->term_sq_flush_code = flush_code;
  else
   nesqp->term_rq_flush_code = flush_code;
 }

 return sizeof(struct nes_terminate_hdr) + copy_len;
}
