
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct t4_cq {size_t cidx; int cidx_inc; int size; int gen; int gts; int cqid; TYPE_1__* queue; int bits_type_ts; } ;
struct TYPE_2__ {int bits_type_ts; } ;


 int CIDXINC (int) ;
 int INGRESSQID (int ) ;
 int SEINTARM (int ) ;
 int TIMERREG (int) ;
 int writel (int,int ) ;

__attribute__((used)) static inline void t4_hwcq_consume(struct t4_cq *cq)
{
 cq->bits_type_ts = cq->queue[cq->cidx].bits_type_ts;
 if (++cq->cidx_inc == (cq->size >> 4)) {
  u32 val;

  val = SEINTARM(0) | CIDXINC(cq->cidx_inc) | TIMERREG(7) |
        INGRESSQID(cq->cqid);
  writel(val, cq->gts);
  cq->cidx_inc = 0;
 }
 if (++cq->cidx == cq->size) {
  cq->cidx = 0;
  cq->gen ^= 1;
 }
}
