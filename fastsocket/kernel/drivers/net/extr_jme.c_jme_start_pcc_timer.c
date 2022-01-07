
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dynpcc_info {scalar_t__ intr_cnt; int last_pkts; int last_bytes; } ;
struct jme_adapter {struct dynpcc_info dpi; } ;
struct TYPE_2__ {int rx_packets; int rx_bytes; } ;


 int JME_TMCSR ;
 TYPE_1__ NET_STAT (struct jme_adapter*) ;
 int PCC_INTERVAL_US ;
 int TMCSR_CNT ;
 int TMCSR_EN ;
 int jwrite32 (struct jme_adapter*,int ,int) ;

__attribute__((used)) static void
jme_start_pcc_timer(struct jme_adapter *jme)
{
 struct dynpcc_info *dpi = &(jme->dpi);
 dpi->last_bytes = NET_STAT(jme).rx_bytes;
 dpi->last_pkts = NET_STAT(jme).rx_packets;
 dpi->intr_cnt = 0;
 jwrite32(jme, JME_TMCSR,
  TMCSR_EN | ((0xFFFFFF - PCC_INTERVAL_US) & TMCSR_CNT));
}
