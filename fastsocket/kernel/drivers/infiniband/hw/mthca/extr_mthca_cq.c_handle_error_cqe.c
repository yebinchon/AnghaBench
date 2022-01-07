
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_qp {int dummy; } ;
struct mthca_err_cqe {int syndrome; int my_qpn; int wqe; int db_cnt; int vendor_err; } ;
struct mthca_dev {int dummy; } ;
struct mthca_cq {int cons_index; int cqn; } ;
struct ib_wc {int vendor_err; int status; } ;
typedef int __be32 ;


 int IB_WC_BAD_RESP_ERR ;
 int IB_WC_GENERAL_ERR ;
 int IB_WC_INV_EECN_ERR ;
 int IB_WC_INV_EEC_STATE_ERR ;
 int IB_WC_LOC_ACCESS_ERR ;
 int IB_WC_LOC_EEC_OP_ERR ;
 int IB_WC_LOC_LEN_ERR ;
 int IB_WC_LOC_PROT_ERR ;
 int IB_WC_LOC_QP_OP_ERR ;
 int IB_WC_LOC_RDD_VIOL_ERR ;
 int IB_WC_MW_BIND_ERR ;
 int IB_WC_REM_ABORT_ERR ;
 int IB_WC_REM_ACCESS_ERR ;
 int IB_WC_REM_INV_RD_REQ_ERR ;
 int IB_WC_REM_INV_REQ_ERR ;
 int IB_WC_REM_OP_ERR ;
 int IB_WC_RETRY_EXC_ERR ;
 int IB_WC_RNR_RETRY_EXC_ERR ;
 int IB_WC_WR_FLUSH_ERR ;
 int be16_add_cpu (int *,int) ;
 int be32_to_cpu (int) ;
 int cpu_to_be32 (int) ;
 int dump_cqe (struct mthca_dev*,struct mthca_err_cqe*) ;
 int mthca_dbg (struct mthca_dev*,char*,int ,int ,int ,int ) ;
 int mthca_free_err_wqe (struct mthca_dev*,struct mthca_qp*,int,int,int*,int*) ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;

__attribute__((used)) static void handle_error_cqe(struct mthca_dev *dev, struct mthca_cq *cq,
        struct mthca_qp *qp, int wqe_index, int is_send,
        struct mthca_err_cqe *cqe,
        struct ib_wc *entry, int *free_cqe)
{
 int dbd;
 __be32 new_wqe;

 if (cqe->syndrome == 138) {
  mthca_dbg(dev, "local QP operation err "
     "(QPN %06x, WQE @ %08x, CQN %06x, index %d)\n",
     be32_to_cpu(cqe->my_qpn), be32_to_cpu(cqe->wqe),
     cq->cqn, cq->cons_index);
  dump_cqe(dev, cqe);
 }





 switch (cqe->syndrome) {
 case 140:
  entry->status = IB_WC_LOC_LEN_ERR;
  break;
 case 138:
  entry->status = IB_WC_LOC_QP_OP_ERR;
  break;
 case 141:
  entry->status = IB_WC_LOC_EEC_OP_ERR;
  break;
 case 139:
  entry->status = IB_WC_LOC_PROT_ERR;
  break;
 case 128:
  entry->status = IB_WC_WR_FLUSH_ERR;
  break;
 case 136:
  entry->status = IB_WC_MW_BIND_ERR;
  break;
 case 145:
  entry->status = IB_WC_BAD_RESP_ERR;
  break;
 case 142:
  entry->status = IB_WC_LOC_ACCESS_ERR;
  break;
 case 132:
  entry->status = IB_WC_REM_INV_REQ_ERR;
  break;
 case 134:
  entry->status = IB_WC_REM_ACCESS_ERR;
  break;
 case 131:
  entry->status = IB_WC_REM_OP_ERR;
  break;
 case 130:
  entry->status = IB_WC_RETRY_EXC_ERR;
  break;
 case 129:
  entry->status = IB_WC_RNR_RETRY_EXC_ERR;
  break;
 case 137:
  entry->status = IB_WC_LOC_RDD_VIOL_ERR;
  break;
 case 133:
  entry->status = IB_WC_REM_INV_RD_REQ_ERR;
  break;
 case 135:
  entry->status = IB_WC_REM_ABORT_ERR;
  break;
 case 144:
  entry->status = IB_WC_INV_EECN_ERR;
  break;
 case 143:
  entry->status = IB_WC_INV_EEC_STATE_ERR;
  break;
 default:
  entry->status = IB_WC_GENERAL_ERR;
  break;
 }

 entry->vendor_err = cqe->vendor_err;





 if (mthca_is_memfree(dev))
  return;

 mthca_free_err_wqe(dev, qp, is_send, wqe_index, &dbd, &new_wqe);






 if (!(new_wqe & cpu_to_be32(0x3f)) || (!cqe->db_cnt && dbd))
  return;

 be16_add_cpu(&cqe->db_cnt, -dbd);
 cqe->wqe = new_wqe;
 cqe->syndrome = 128;

 *free_cqe = 0;
}
