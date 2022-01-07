
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef void* u16 ;
struct ib_wc {int byte_len; int port_num; scalar_t__ dlid_path_bits; scalar_t__ sl; void* slid; struct ib_qp* qp; int src_qp; void* pkey_index; int opcode; int status; int wr_id; } ;
struct ib_qp {int dummy; } ;
struct ib_mad {int dummy; } ;
struct ib_grh {int dummy; } ;


 int IB_QP0 ;
 int IB_WC_RECV ;
 int IB_WC_SUCCESS ;
 int memset (struct ib_wc*,int ,int) ;

__attribute__((used)) static void build_smp_wc(struct ib_qp *qp,
    u64 wr_id, u16 slid, u16 pkey_index, u8 port_num,
    struct ib_wc *wc)
{
 memset(wc, 0, sizeof *wc);
 wc->wr_id = wr_id;
 wc->status = IB_WC_SUCCESS;
 wc->opcode = IB_WC_RECV;
 wc->pkey_index = pkey_index;
 wc->byte_len = sizeof(struct ib_mad) + sizeof(struct ib_grh);
 wc->src_qp = IB_QP0;
 wc->qp = qp;
 wc->slid = slid;
 wc->sl = 0;
 wc->dlid_path_bits = 0;
 wc->port_num = port_num;
}
