
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_25__ {int interface_id; int subnet_prefix; } ;
struct TYPE_26__ {TYPE_8__ global; } ;
struct TYPE_14__ {TYPE_9__ dgid; int sgid_index; } ;
struct TYPE_16__ {int ah_flags; int dlid; TYPE_10__ grh; } ;
struct TYPE_15__ {int qp_num; } ;
struct TYPE_18__ {int interface_id; int subnet_prefix; } ;
struct TYPE_19__ {TYPE_1__ global; } ;
struct TYPE_20__ {TYPE_2__ dgid; int sgid_index; } ;
struct TYPE_21__ {int ah_flags; int dlid; scalar_t__ port_num; TYPE_3__ grh; } ;
struct qib_qp {scalar_t__ s_mig_state; scalar_t__ port_num; TYPE_12__ remote_ah_attr; TYPE_11__ ibqp; int s_pkey_index; int s_lock; TYPE_4__ alt_ah_attr; int s_alt_pkey_index; } ;
struct qib_ibport {int gid_prefix; } ;
struct TYPE_22__ {int sgid; int dgid; } ;
struct TYPE_23__ {TYPE_5__ grh; } ;
struct TYPE_24__ {TYPE_6__ l; } ;
struct qib_ib_header {int * lrh; TYPE_7__ u; } ;
typedef int __be64 ;
struct TYPE_17__ {scalar_t__ port; } ;


 int IB_AH_GRH ;
 int IB_BTH_MIG_REQ ;
 scalar_t__ IB_MIG_ARMED ;
 scalar_t__ IB_MIG_REARM ;
 int IB_NOTICE_TRAP_BAD_PKEY ;
 int be16_to_cpu (int ) ;
 int get_sguid (struct qib_ibport*,int ) ;
 int gid_ok (int *,int ,int ) ;
 TYPE_13__* ppd_from_ibp (struct qib_ibport*) ;
 int qib_bad_pqkey (struct qib_ibport*,int ,int ,int,int ,int ,int ,int ) ;
 int qib_get_pkey (struct qib_ibport*,int ) ;
 int qib_migrate_qp (struct qib_qp*) ;
 int qib_pkey_ok (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int qib_ruc_check_hdr(struct qib_ibport *ibp, struct qib_ib_header *hdr,
        int has_grh, struct qib_qp *qp, u32 bth0)
{
 __be64 guid;
 unsigned long flags;

 if (qp->s_mig_state == IB_MIG_ARMED && (bth0 & IB_BTH_MIG_REQ)) {
  if (!has_grh) {
   if (qp->alt_ah_attr.ah_flags & IB_AH_GRH)
    goto err;
  } else {
   if (!(qp->alt_ah_attr.ah_flags & IB_AH_GRH))
    goto err;
   guid = get_sguid(ibp, qp->alt_ah_attr.grh.sgid_index);
   if (!gid_ok(&hdr->u.l.grh.dgid, ibp->gid_prefix, guid))
    goto err;
   if (!gid_ok(&hdr->u.l.grh.sgid,
       qp->alt_ah_attr.grh.dgid.global.subnet_prefix,
       qp->alt_ah_attr.grh.dgid.global.interface_id))
    goto err;
  }
  if (!qib_pkey_ok((u16)bth0,
     qib_get_pkey(ibp, qp->s_alt_pkey_index))) {
   qib_bad_pqkey(ibp, IB_NOTICE_TRAP_BAD_PKEY,
          (u16)bth0,
          (be16_to_cpu(hdr->lrh[0]) >> 4) & 0xF,
          0, qp->ibqp.qp_num,
          hdr->lrh[3], hdr->lrh[1]);
   goto err;
  }

  if (be16_to_cpu(hdr->lrh[3]) != qp->alt_ah_attr.dlid ||
      ppd_from_ibp(ibp)->port != qp->alt_ah_attr.port_num)
   goto err;
  spin_lock_irqsave(&qp->s_lock, flags);
  qib_migrate_qp(qp);
  spin_unlock_irqrestore(&qp->s_lock, flags);
 } else {
  if (!has_grh) {
   if (qp->remote_ah_attr.ah_flags & IB_AH_GRH)
    goto err;
  } else {
   if (!(qp->remote_ah_attr.ah_flags & IB_AH_GRH))
    goto err;
   guid = get_sguid(ibp,
      qp->remote_ah_attr.grh.sgid_index);
   if (!gid_ok(&hdr->u.l.grh.dgid, ibp->gid_prefix, guid))
    goto err;
   if (!gid_ok(&hdr->u.l.grh.sgid,
       qp->remote_ah_attr.grh.dgid.global.subnet_prefix,
       qp->remote_ah_attr.grh.dgid.global.interface_id))
    goto err;
  }
  if (!qib_pkey_ok((u16)bth0,
     qib_get_pkey(ibp, qp->s_pkey_index))) {
   qib_bad_pqkey(ibp, IB_NOTICE_TRAP_BAD_PKEY,
          (u16)bth0,
          (be16_to_cpu(hdr->lrh[0]) >> 4) & 0xF,
          0, qp->ibqp.qp_num,
          hdr->lrh[3], hdr->lrh[1]);
   goto err;
  }

  if (be16_to_cpu(hdr->lrh[3]) != qp->remote_ah_attr.dlid ||
      ppd_from_ibp(ibp)->port != qp->port_num)
   goto err;
  if (qp->s_mig_state == IB_MIG_REARM &&
      !(bth0 & IB_BTH_MIG_REQ))
   qp->s_mig_state = IB_MIG_ARMED;
 }

 return 0;

err:
 return 1;
}
