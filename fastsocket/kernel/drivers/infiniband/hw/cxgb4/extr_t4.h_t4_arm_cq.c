
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct t4_cq {scalar_t__ cidx_inc; int gts; int cqid; } ;


 int CIDXINC (scalar_t__) ;
 scalar_t__ CIDXINC_MASK ;
 int INGRESSQID (int ) ;
 int SEINTARM (int) ;
 int TIMERREG (int) ;
 int writel (int,int ) ;

__attribute__((used)) static inline int t4_arm_cq(struct t4_cq *cq, int se)
{
 u32 val;

 while (cq->cidx_inc > CIDXINC_MASK) {
  val = SEINTARM(0) | CIDXINC(CIDXINC_MASK) | TIMERREG(7) |
        INGRESSQID(cq->cqid);
  writel(val, cq->gts);
  cq->cidx_inc -= CIDXINC_MASK;
 }
 val = SEINTARM(se) | CIDXINC(cq->cidx_inc) | TIMERREG(6) |
       INGRESSQID(cq->cqid);
 writel(val, cq->gts);
 cq->cidx_inc = 0;
 return 0;
}
