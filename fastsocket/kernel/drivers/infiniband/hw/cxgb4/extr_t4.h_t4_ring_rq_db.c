
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int qid; } ;
struct t4_wq {int db; TYPE_1__ rq; } ;


 int PIDX (int ) ;
 int QID (int ) ;
 int wmb () ;
 int writel (int,int ) ;

__attribute__((used)) static inline void t4_ring_rq_db(struct t4_wq *wq, u16 inc)
{
 wmb();
 writel(QID(wq->rq.qid) | PIDX(inc), wq->db);
}
