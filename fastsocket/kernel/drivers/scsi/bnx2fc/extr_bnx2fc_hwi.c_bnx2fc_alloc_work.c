
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnx2fc_work {int wqe; struct bnx2fc_rport* tgt; int list; } ;
struct bnx2fc_rport {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 struct bnx2fc_work* kzalloc (int,int ) ;

struct bnx2fc_work *bnx2fc_alloc_work(struct bnx2fc_rport *tgt, u16 wqe)
{
 struct bnx2fc_work *work;
 work = kzalloc(sizeof(struct bnx2fc_work), GFP_ATOMIC);
 if (!work)
  return ((void*)0);

 INIT_LIST_HEAD(&work->list);
 work->tgt = tgt;
 work->wqe = wqe;
 return work;
}
