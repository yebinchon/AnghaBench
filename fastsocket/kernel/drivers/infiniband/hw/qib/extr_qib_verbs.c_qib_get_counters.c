
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_verbs_counters {scalar_t__ vl15_dropped; scalar_t__ excessive_buffer_overrun_errors; scalar_t__ local_link_integrity_errors; scalar_t__ port_rcv_packets; scalar_t__ port_xmit_packets; scalar_t__ port_rcv_data; scalar_t__ port_xmit_data; scalar_t__ port_xmit_discards; scalar_t__ port_rcv_remphys_errors; scalar_t__ port_rcv_errors; scalar_t__ link_downed_counter; scalar_t__ link_error_recovery_counter; scalar_t__ symbol_error_counter; } ;
struct qib_pportdata {TYPE_1__* dd; } ;
struct TYPE_2__ {int flags; scalar_t__ (* f_portcntr ) (struct qib_pportdata*,int ) ;} ;


 int EINVAL ;
 int QIBPORTCNTR_BADFORMAT ;
 int QIBPORTCNTR_ERRICRC ;
 int QIBPORTCNTR_ERRLINK ;
 int QIBPORTCNTR_ERRLPCRC ;
 int QIBPORTCNTR_ERRVCRC ;
 int QIBPORTCNTR_ERR_RLEN ;
 int QIBPORTCNTR_EXCESSBUFOVFL ;
 int QIBPORTCNTR_IBLINKDOWN ;
 int QIBPORTCNTR_IBLINKERRRECOV ;
 int QIBPORTCNTR_IBSYMBOLERR ;
 int QIBPORTCNTR_INVALIDRLEN ;
 int QIBPORTCNTR_LLI ;
 int QIBPORTCNTR_PKTRCV ;
 int QIBPORTCNTR_PKTSEND ;
 int QIBPORTCNTR_RCVEBP ;
 int QIBPORTCNTR_RCVOVFL ;
 int QIBPORTCNTR_RXDROPPKT ;
 int QIBPORTCNTR_RXLOCALPHYERR ;
 int QIBPORTCNTR_RXVLERR ;
 int QIBPORTCNTR_UNSUPVL ;
 int QIBPORTCNTR_VL15PKTDROP ;
 int QIBPORTCNTR_WORDRCV ;
 int QIBPORTCNTR_WORDSEND ;
 int QIB_PRESENT ;
 scalar_t__ stub1 (struct qib_pportdata*,int ) ;
 scalar_t__ stub10 (struct qib_pportdata*,int ) ;
 scalar_t__ stub11 (struct qib_pportdata*,int ) ;
 scalar_t__ stub12 (struct qib_pportdata*,int ) ;
 scalar_t__ stub13 (struct qib_pportdata*,int ) ;
 scalar_t__ stub14 (struct qib_pportdata*,int ) ;
 scalar_t__ stub15 (struct qib_pportdata*,int ) ;
 scalar_t__ stub16 (struct qib_pportdata*,int ) ;
 scalar_t__ stub17 (struct qib_pportdata*,int ) ;
 scalar_t__ stub18 (struct qib_pportdata*,int ) ;
 scalar_t__ stub19 (struct qib_pportdata*,int ) ;
 scalar_t__ stub2 (struct qib_pportdata*,int ) ;
 scalar_t__ stub20 (struct qib_pportdata*,int ) ;
 scalar_t__ stub21 (struct qib_pportdata*,int ) ;
 scalar_t__ stub22 (struct qib_pportdata*,int ) ;
 scalar_t__ stub23 (struct qib_pportdata*,int ) ;
 scalar_t__ stub3 (struct qib_pportdata*,int ) ;
 scalar_t__ stub4 (struct qib_pportdata*,int ) ;
 scalar_t__ stub5 (struct qib_pportdata*,int ) ;
 scalar_t__ stub6 (struct qib_pportdata*,int ) ;
 scalar_t__ stub7 (struct qib_pportdata*,int ) ;
 scalar_t__ stub8 (struct qib_pportdata*,int ) ;
 scalar_t__ stub9 (struct qib_pportdata*,int ) ;

int qib_get_counters(struct qib_pportdata *ppd,
       struct qib_verbs_counters *cntrs)
{
 int ret;

 if (!(ppd->dd->flags & QIB_PRESENT)) {

  ret = -EINVAL;
  goto bail;
 }
 cntrs->symbol_error_counter =
  ppd->dd->f_portcntr(ppd, QIBPORTCNTR_IBSYMBOLERR);
 cntrs->link_error_recovery_counter =
  ppd->dd->f_portcntr(ppd, QIBPORTCNTR_IBLINKERRRECOV);





 cntrs->link_downed_counter =
  ppd->dd->f_portcntr(ppd, QIBPORTCNTR_IBLINKDOWN);
 cntrs->port_rcv_errors =
  ppd->dd->f_portcntr(ppd, QIBPORTCNTR_RXDROPPKT) +
  ppd->dd->f_portcntr(ppd, QIBPORTCNTR_RCVOVFL) +
  ppd->dd->f_portcntr(ppd, QIBPORTCNTR_ERR_RLEN) +
  ppd->dd->f_portcntr(ppd, QIBPORTCNTR_INVALIDRLEN) +
  ppd->dd->f_portcntr(ppd, QIBPORTCNTR_ERRLINK) +
  ppd->dd->f_portcntr(ppd, QIBPORTCNTR_ERRICRC) +
  ppd->dd->f_portcntr(ppd, QIBPORTCNTR_ERRVCRC) +
  ppd->dd->f_portcntr(ppd, QIBPORTCNTR_ERRLPCRC) +
  ppd->dd->f_portcntr(ppd, QIBPORTCNTR_BADFORMAT);
 cntrs->port_rcv_errors +=
  ppd->dd->f_portcntr(ppd, QIBPORTCNTR_RXLOCALPHYERR);
 cntrs->port_rcv_errors +=
  ppd->dd->f_portcntr(ppd, QIBPORTCNTR_RXVLERR);
 cntrs->port_rcv_remphys_errors =
  ppd->dd->f_portcntr(ppd, QIBPORTCNTR_RCVEBP);
 cntrs->port_xmit_discards =
  ppd->dd->f_portcntr(ppd, QIBPORTCNTR_UNSUPVL);
 cntrs->port_xmit_data = ppd->dd->f_portcntr(ppd,
   QIBPORTCNTR_WORDSEND);
 cntrs->port_rcv_data = ppd->dd->f_portcntr(ppd,
   QIBPORTCNTR_WORDRCV);
 cntrs->port_xmit_packets = ppd->dd->f_portcntr(ppd,
   QIBPORTCNTR_PKTSEND);
 cntrs->port_rcv_packets = ppd->dd->f_portcntr(ppd,
   QIBPORTCNTR_PKTRCV);
 cntrs->local_link_integrity_errors =
  ppd->dd->f_portcntr(ppd, QIBPORTCNTR_LLI);
 cntrs->excessive_buffer_overrun_errors =
  ppd->dd->f_portcntr(ppd, QIBPORTCNTR_EXCESSBUFOVFL);
 cntrs->vl15_dropped =
  ppd->dd->f_portcntr(ppd, QIBPORTCNTR_VL15PKTDROP);

 ret = 0;

bail:
 return ret;
}
