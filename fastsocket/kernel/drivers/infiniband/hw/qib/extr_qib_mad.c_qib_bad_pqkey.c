
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct qib_ibport {int n_pkt_drops; int qkey_violations; int pkey_violations; } ;
struct TYPE_4__ {void* qp2; void* sl_qp1; void* key; scalar_t__ lid2; scalar_t__ lid1; } ;
struct TYPE_6__ {TYPE_1__ ntc_257_258; } ;
struct ib_mad_notice_attr {TYPE_3__ details; scalar_t__ toggle_count; int issuer_lid; scalar_t__ trap_num; int prod_type_lsb; scalar_t__ prod_type_msb; int generic_type; } ;
typedef scalar_t__ __be16 ;
struct TYPE_5__ {int lid; } ;


 int IB_NOTICE_PROD_CA ;
 scalar_t__ IB_NOTICE_TRAP_BAD_PKEY ;
 int IB_NOTICE_TYPE_SECURITY ;
 int cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int) ;
 int memset (TYPE_3__*,int ,int) ;
 TYPE_2__* ppd_from_ibp (struct qib_ibport*) ;
 int qib_send_trap (struct qib_ibport*,struct ib_mad_notice_attr*,int) ;

void qib_bad_pqkey(struct qib_ibport *ibp, __be16 trap_num, u32 key, u32 sl,
     u32 qp1, u32 qp2, __be16 lid1, __be16 lid2)
{
 struct ib_mad_notice_attr data;

 if (trap_num == IB_NOTICE_TRAP_BAD_PKEY)
  ibp->pkey_violations++;
 else
  ibp->qkey_violations++;
 ibp->n_pkt_drops++;


 data.generic_type = IB_NOTICE_TYPE_SECURITY;
 data.prod_type_msb = 0;
 data.prod_type_lsb = IB_NOTICE_PROD_CA;
 data.trap_num = trap_num;
 data.issuer_lid = cpu_to_be16(ppd_from_ibp(ibp)->lid);
 data.toggle_count = 0;
 memset(&data.details, 0, sizeof data.details);
 data.details.ntc_257_258.lid1 = lid1;
 data.details.ntc_257_258.lid2 = lid2;
 data.details.ntc_257_258.key = cpu_to_be32(key);
 data.details.ntc_257_258.sl_qp1 = cpu_to_be32((sl << 28) | qp1);
 data.details.ntc_257_258.qp2 = cpu_to_be32(qp2);

 qib_send_trap(ibp, &data, sizeof data);
}
