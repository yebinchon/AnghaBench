
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int stops; } ;
struct sge_ofld_txq {int full; TYPE_1__ q; } ;
struct fw_wr_hdr {int lo; } ;


 int FW_WR_EQUEQ ;
 int FW_WR_EQUIQ ;
 int htonl (int) ;

__attribute__((used)) static void ofldtxq_stop(struct sge_ofld_txq *q, struct sk_buff *skb)
{
 struct fw_wr_hdr *wr = (struct fw_wr_hdr *)skb->data;

 wr->lo |= htonl(FW_WR_EQUEQ | FW_WR_EQUIQ);
 q->q.stops++;
 q->full = 1;
}
