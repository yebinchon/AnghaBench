
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct qib_verbs_counters {int vl15_dropped; int excessive_buffer_overrun_errors; int local_link_integrity_errors; int port_xmit_discards; int port_rcv_remphys_errors; int port_rcv_errors; int link_downed_counter; int link_error_recovery_counter; int symbol_error_counter; int port_rcv_packets; int port_xmit_packets; int port_rcv_data; int port_xmit_data; } ;
struct TYPE_6__ {int lock; } ;
struct TYPE_5__ {scalar_t__ counter; } ;
struct qib_pportdata {TYPE_3__ ibport_data; TYPE_2__ cong_stats; } ;
struct qib_ibport {int z_vl15_dropped; scalar_t__ n_vl15_dropped; int z_excessive_buffer_overrun_errors; int z_local_link_integrity_errors; int z_port_xmit_discards; int z_port_rcv_remphys_errors; int z_port_rcv_errors; int z_link_downed_counter; int z_link_error_recovery_counter; int z_symbol_error_counter; int z_port_rcv_packets; int z_port_xmit_packets; int z_port_rcv_data; int z_port_xmit_data; } ;
struct qib_devdata {int (* f_set_cntr_sample ) (struct qib_pportdata*,int ,int) ;} ;
struct TYPE_4__ {int attr_mod; } ;
struct ib_pma_mad {TYPE_1__ mad_hdr; } ;
struct ib_device {int dummy; } ;


 int IB_PMA_SEL_CONG_ALL ;
 int IB_PMA_SEL_CONG_PORT_DATA ;
 int IB_PMA_SEL_CONG_XMIT ;
 int QIB_CONG_TIMER_PSINTERVAL ;
 int be32_to_cpu (int ) ;
 struct qib_devdata* dd_from_ppd (struct qib_pportdata*) ;
 int pma_get_portcounters_cong (struct ib_pma_mad*,struct ib_device*,int ) ;
 struct qib_pportdata* ppd_from_ibp (struct qib_ibport*) ;
 int qib_get_counters (struct qib_pportdata*,struct qib_verbs_counters*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct qib_pportdata*,int ,int) ;
 struct qib_ibport* to_iport (struct ib_device*,int ) ;

__attribute__((used)) static int pma_set_portcounters_cong(struct ib_pma_mad *pmp,
         struct ib_device *ibdev, u8 port)
{
 struct qib_ibport *ibp = to_iport(ibdev, port);
 struct qib_pportdata *ppd = ppd_from_ibp(ibp);
 struct qib_devdata *dd = dd_from_ppd(ppd);
 struct qib_verbs_counters cntrs;
 u32 counter_select = (be32_to_cpu(pmp->mad_hdr.attr_mod) >> 24) & 0xFF;
 int ret = 0;
 unsigned long flags;

 qib_get_counters(ppd, &cntrs);

 ret = pma_get_portcounters_cong(pmp, ibdev, port);

 if (counter_select & IB_PMA_SEL_CONG_XMIT) {
  spin_lock_irqsave(&ppd->ibport_data.lock, flags);
  ppd->cong_stats.counter = 0;
  dd->f_set_cntr_sample(ppd, QIB_CONG_TIMER_PSINTERVAL,
          0x0);
  spin_unlock_irqrestore(&ppd->ibport_data.lock, flags);
 }
 if (counter_select & IB_PMA_SEL_CONG_PORT_DATA) {
  ibp->z_port_xmit_data = cntrs.port_xmit_data;
  ibp->z_port_rcv_data = cntrs.port_rcv_data;
  ibp->z_port_xmit_packets = cntrs.port_xmit_packets;
  ibp->z_port_rcv_packets = cntrs.port_rcv_packets;
 }
 if (counter_select & IB_PMA_SEL_CONG_ALL) {
  ibp->z_symbol_error_counter =
   cntrs.symbol_error_counter;
  ibp->z_link_error_recovery_counter =
   cntrs.link_error_recovery_counter;
  ibp->z_link_downed_counter =
   cntrs.link_downed_counter;
  ibp->z_port_rcv_errors = cntrs.port_rcv_errors;
  ibp->z_port_rcv_remphys_errors =
   cntrs.port_rcv_remphys_errors;
  ibp->z_port_xmit_discards =
   cntrs.port_xmit_discards;
  ibp->z_local_link_integrity_errors =
   cntrs.local_link_integrity_errors;
  ibp->z_excessive_buffer_overrun_errors =
   cntrs.excessive_buffer_overrun_errors;
  ibp->n_vl15_dropped = 0;
  ibp->z_vl15_dropped = cntrs.vl15_dropped;
 }

 return ret;
}
