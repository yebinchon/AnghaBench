
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dynpcc_info {scalar_t__ last_bytes; scalar_t__ last_pkts; scalar_t__ intr_cnt; scalar_t__ attempt; scalar_t__ cur; int cnt; } ;
struct jme_adapter {int rxclean_task; struct dynpcc_info dpi; } ;
struct TYPE_2__ {scalar_t__ rx_bytes; scalar_t__ rx_packets; } ;


 TYPE_1__ NET_STAT (struct jme_adapter*) ;
 scalar_t__ PCC_INTR_THRESHOLD ;
 int PCC_P1 ;
 int PCC_P2 ;
 scalar_t__ PCC_P2_THRESHOLD ;
 int PCC_P3 ;
 scalar_t__ PCC_P3_THRESHOLD ;
 int jme_attempt_pcc (struct dynpcc_info*,int ) ;
 int jme_set_rx_pcc (struct jme_adapter*,scalar_t__) ;
 int tasklet_schedule (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
jme_dynamic_pcc(struct jme_adapter *jme)
{
 register struct dynpcc_info *dpi = &(jme->dpi);

 if ((NET_STAT(jme).rx_bytes - dpi->last_bytes) > PCC_P3_THRESHOLD)
  jme_attempt_pcc(dpi, PCC_P3);
 else if ((NET_STAT(jme).rx_packets - dpi->last_pkts) > PCC_P2_THRESHOLD
 || dpi->intr_cnt > PCC_INTR_THRESHOLD)
  jme_attempt_pcc(dpi, PCC_P2);
 else
  jme_attempt_pcc(dpi, PCC_P1);

 if (unlikely(dpi->attempt != dpi->cur && dpi->cnt > 5)) {
  if (dpi->attempt < dpi->cur)
   tasklet_schedule(&jme->rxclean_task);
  jme_set_rx_pcc(jme, dpi->attempt);
  dpi->cur = dpi->attempt;
  dpi->cnt = 0;
 }
}
