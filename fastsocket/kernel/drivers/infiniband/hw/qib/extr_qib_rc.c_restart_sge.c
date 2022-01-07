
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int num_sge; } ;
struct qib_swqe {int psn; int length; TYPE_1__ wr; int * sg_list; } ;
struct qib_sge_state {int total_len; int num_sge; int * sg_list; int sge; } ;


 int QIB_PSN_MASK ;
 int qib_skip_sge (struct qib_sge_state*,int,int ) ;

__attribute__((used)) static u32 restart_sge(struct qib_sge_state *ss, struct qib_swqe *wqe,
         u32 psn, u32 pmtu)
{
 u32 len;

 len = ((psn - wqe->psn) & QIB_PSN_MASK) * pmtu;
 ss->sge = wqe->sg_list[0];
 ss->sg_list = wqe->sg_list + 1;
 ss->num_sge = wqe->wr.num_sge;
 ss->total_len = wqe->length;
 qib_skip_sge(ss, len, 0);
 return wqe->length - len;
}
