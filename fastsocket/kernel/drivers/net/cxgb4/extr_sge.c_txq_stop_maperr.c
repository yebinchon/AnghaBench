
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cntxt_id; int stops; } ;
struct sge_ofld_txq {TYPE_3__* adap; TYPE_1__ q; int mapping_err; } ;
struct TYPE_5__ {int txq_maperr; scalar_t__ egr_start; } ;
struct TYPE_6__ {TYPE_2__ sge; } ;


 int set_bit (scalar_t__,int ) ;

__attribute__((used)) static void txq_stop_maperr(struct sge_ofld_txq *q)
{
 q->mapping_err++;
 q->q.stops++;
 set_bit(q->q.cntxt_id - q->adap->sge.egr_start,
  q->adap->sge.txq_maperr);
}
